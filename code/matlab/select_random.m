function index = select_random(weights)
    % Copyright 2008 - 2021, MIT Lincoln Laboratory
    % SPDX-License-Identifier: BSD-2-Clause
    % SELECT_RANDOM Randomly selects an index according to specified weights.
    %   Returns a randomly selected index according to the distribution
    %   specified by a vector of weights.
    %
    %   INDEX = SELECT_RANDOM(WEIGHTS) returns a scalar index INDEX selected
    %   randomly according to the specified weights WEIGHTS represented as an
    %   array.

    %% Call rand
    % Sample uniformly distributed random numbers
    r = rand;

    %% Calculate
    s = cumsum(weights);
    sthres = s(end) * r;
    x = s >= sthres;
    index = find(x, 1, 'first');
