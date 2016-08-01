# written in Python 3, should work in python 2 as well
from __future__ import absolute_import, print_function, division
# must pip install six
from six.moves import zip, range

home_vals = [725384, 610099, 499110, 1248357, 635702, 923237, 347682, 529385]


def print_len_home_vals(home_vals):
    print('There are currently {} home values saved'.format(len(home_vals)))


def iterate_following_rules(home_vals):
    minimum = home_vals[0]
    maximum = home_vals[0]
    mean = 0
    for i, home_val in enumerate(home_vals):
            print('Home {} has an assessed value of ${}'.format(i+1, home_val))
            if home_val % 5 == 0:
                print('Warning, home requires re-assessment')
            if home_val > maximum:
                maximum = home_val
            if home_val < minimum:
                minimum = home_val
            mean += home_val
    mean = mean / len(home_vals)
    return mean, minimum, maximum


print_len_home_vals(home_vals)

home_vals.append(1536543)
home_vals.append(724942)

print_len_home_vals(home_vals)

mean, minimum, maximum = iterate_following_rules(home_vals)

print('The max home value is ${} and the min home value is ${}'.format(maximum,
                                                                       minimum))
print('The mean home value is ${}'.format(round(mean)))
