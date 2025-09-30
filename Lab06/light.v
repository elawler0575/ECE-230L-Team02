module light(
    // Declare downstairs and upstairs input
    input upstairs, downstairs,
    // Declare stair light output
    output stair_light
);

    // Enter logic equation here
    assign stair_light = upstairs ^ downstairs;

endmodule