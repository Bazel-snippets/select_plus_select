def _repro_rule_impl(ctx):
    print("\ntargets_list = %s" % ctx.attr.targets_list)

repro_rule = rule(
    implementation = _repro_rule_impl,
    attrs = {
        "targets_list": attr.label_list(),
    },
)