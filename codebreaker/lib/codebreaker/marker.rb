module Codebreaker
  class Marker
    def initialize(secret, guess)
      @secret = secret
      @guess = guess
    end

    def exact_match?(index)
      @guess[index] == @secret[index]
    end

    def number_match?(index)
      @secret.include?(@guess[index]) && !exact_match?(index)
    end

    def exact_count
      (0..3).inject(0) { |count, index| count + (exact_match?(index) ? 1 : 0) }
    end

    def number_count
      total_count - exact_count
    end

    def total_count
      secret = @secret.split ''
      @guess.split('').inject(0) do |count, n|
        count + (delete_first(secret, n) ? 1 : 0)
      end
    end

    def delete_first(code, n)
      index = code.index(n)
      code.delete_at index if index
    end
  end
end