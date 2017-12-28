require 'rails_helper'

RSpec.describe MyClass do
  describe '#my_method' do
    subject { MyClass.new.my_method(arg) }

    context 'when ...' do
      context 'when ...' do
        context 'when ...' do
          context 'when ...' do
            let(:arg) { create(:arg, :trait, attr: x) }

            it 'should be ...' do
              YourClass.new(
                x: X.x(
                  y: Y.y(
                    z: Z.z(
                      a: A.a(
                        b: B.b(
                          c: C.c()
                        )
                      )
                    )
                  )
                )
              )
            end
          end
        end
      end
    end
  end
end
