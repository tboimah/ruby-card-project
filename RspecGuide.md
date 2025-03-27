# RSpec Guide for Beginners

## 1. Install RSpec
RSpec is a testing framework for Ruby. Install it with:

```sh
gem install rspec
```

If using Bundler, add this to your `Gemfile`:

```ruby
group :development, :test do
  gem 'rspec'
end
```

Then run:

```sh
bundle install
rspec --init
```

This sets up the `spec` directory and configuration files.

---

## 2. Basic RSpec Structure
RSpec follows a simple structure:

- **Describe blocks** define what you’re testing.
- **It blocks** contain the actual test examples.

Example:

```ruby
# spec/calculator_spec.rb
require_relative '../calculator'

RSpec.describe Calculator do
  it "adds two numbers" do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eq(5)
  end
end
```

---

## 3. Running RSpec Tests
Run all tests with:

```sh
rspec
```

Run a specific test file:

```sh
rspec spec/calculator_spec.rb
```

---

## 4. Writing a Simple Class to Test
Here’s a basic `Calculator` class:

```ruby
# calculator.rb
class Calculator
  def add(a, b)
    a + b
  end
end
```

Now the `calculator_spec.rb` test above will pass when you run `rspec`.

---

## 5. Using Matchers
RSpec has different matchers, such as:

- `.to eq(value)` → exact match
- `.to be > value` → comparison
- `.to include(value)` → array/hash inclusion

Example:

```ruby
RSpec.describe "Matchers" do
  it "tests different matchers" do
    expect(5).to be > 2
    expect([1, 2, 3]).to include(2)
  end
end
```

---

## 6. Mocking and Stubbing
RSpec allows you to mock objects:

```ruby
RSpec.describe "Mocking" do
  it "mocks a method" do
    user = double("User", name: "Thomas")
    expect(user.name).to eq("Thomas")
  end
end
```

---

## 7. Next Steps
- Try writing more tests for other Ruby classes.
- Look into **RSpec hooks** like `before(:each)`, `let`, and `subject` for setup.
- Learn about **factory libraries** like FactoryBot for generating test data.

Happy testing with RSpec! 🚀
