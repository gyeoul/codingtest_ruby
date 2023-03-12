# frozen_string_literal: true

def solution(survey, choices)
  arr = { R: 0, T: 0, C: 0, F: 0, J: 0, M: 0, A: 0, N: 0 }
  answer = ''
  survey.each_with_index do |v, i|
    #print i
    temp = v.split('')
    # print temp
    arr[(temp[0]).to_sym] += -1 * (choices[i] - 4) if (choices[i] - 4).negative?
    arr[(temp[1]).to_sym] += choices[i] - 4 if (choices[i] - 4).positive?
  end

  #print arr
  answer += arr[:R] >= arr[:T] ? 'R' : 'T'
  answer += arr[:C] >= arr[:F] ? 'C' : 'F'
  answer += arr[:J] >= arr[:M] ? 'J' : 'M'
  answer += arr[:A] >= arr[:N] ? 'A' : 'N'
  answer

end

survey = [%w[AN CF MJ RT NA], %w[TR RT TR]]
choices = [[5, 3, 2, 7, 5], [7, 1, 3]]
result = %w[TCMA RCJA]

print(solution(survey[0], choices[0])) # == result[1]
