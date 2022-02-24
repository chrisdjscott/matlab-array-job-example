function array_job_entry(task_id)

    % 2d parameter sweep
    % 2 parameter values to sweep over, a and b
    % could be read from file or something else...
    a_vals = [1 2 4 8 16];
    b_vals = [1 3 9 27];

    % check that task_id is within the correct range
    a_vals_dim = length(a_vals);
    b_vals_dim = length(b_vals);
    if (task_id < 1 || task_id > a_vals_dim * b_vals_dim)
        fprintf('ERROR: task_id (%d) is out of range (1 - %d)\n', task_id, length(a_vals) * length(b_vals));
        quit(1);
    end

    % convert flat index to 2d
    a_ind = floor((task_id - 1) / b_vals_dim) + 1;
    b_ind = mod(task_id - 1, b_vals_dim) + 1;

    % get the a and b value
    a = a_vals(a_ind);
    b = b_vals(b_ind);
    fprintf('a_vals[%d] = %f\n', a_ind, a);
    fprintf('b_vals[%d] = %f\n', b_ind, b);

    % now do something with the values (call another function, etc)
    % make sure each function writes unique output, e.g. by
    % changing to a unique subdirectory or writing files with parameter
    % values or task_id in the name





    % successful exit
    quit(0);

end
