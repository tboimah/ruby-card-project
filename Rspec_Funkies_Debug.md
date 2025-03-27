# Debugging RSpec Error in Funkies Test

## **Issue Overview**
Jeff's test is throwing an error:

```sh
funkies.rb:2:in `biggest': wrong number of arguments (given 0, expected 1) (ArgumentError)
```

### **What This Means**
This error occurs because the `biggest` method is expecting an argument, but it is being called without one in the test file.

## **Problems in the Code**
### **1. Duplicate `require` Statements**

In `funkies_spec.rb`, we see:

```ruby
require '../funkies'
require_relative '../funkies'
```

- `require_relative` is enough. The extra `require` is unnecessary.

### **2. Incorrect `describe` Syntax**

The original test has this issue:

```ruby
describe Funkies.biggest do  # ❌ Incorrect usage
```

- `describe` should be used for **classes or modules**, not method calls.
- `biggest` should be tested inside an `it` block.

## **Fixed Code**

### **1. Update `funkies_spec.rb`**
```ruby
require_relative '../funkies'  # ✅ Only require once

RSpec.describe Funkies do
  describe ".biggest" do  # ✅ Testing a class/module method
    it "returns the largest number from an array" do
      expect(Funkies.biggest([1, 3, 5, 2])).to eq(5)  # ✅ Corrected test
    end
  end
end
```

### **2. Ensure `biggest` is Defined Correctly in `funkies.rb`**
```ruby
class Funkies
  def self.biggest(numbers)
    numbers.max  # ✅ Ensure it takes an argument
  end
end
```

## **Next Steps for Jeff**
1. **Update `funkies_spec.rb`** with the fixed code.
2. **Check `funkies.rb`** to ensure `biggest` is defined properly inside the `Funkies` class.
3. **Run the test again:**
   ```sh
   rspec spec/funkies_spec.rb
   ```
