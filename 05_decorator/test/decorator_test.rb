require 'test_helper'
require 'product'
require 'pry'

describe Product do
  let(:product) { Product.new "Tomato", :fruit, %w(red salad sour) }
  let(:expected_result) { <<EOF
    <tr>
      <th>Tomato</th>
      <td>fruit</td>
      <td>
        <ul>
          <li>red</li>
          <li>salad</li>
          <li>sour</li>
        </ul>
      </td>
    </tr>
EOF
}
  it "can be printed as a HTML table row" do
    product_decorator = ProductDecorator.new product

    clean_text(product_decorator.as_html_row).must_equal clean_text(expected_result)
  end

  def clean_text text
    text.strip.gsub(/(^\s+)|\n/, "")
  end
end
