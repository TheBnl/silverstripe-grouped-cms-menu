<ul class="cms-menu__list">
    <% loop $GroupedMainMenu %>
        <li class="$LinkingMode $FirstLast<% if $Children %> children <% end_if %> <% if $LinkingMode == 'link' %><% else %>opened<% end_if %>" id="Menu-$Code" title="$Title.ATT">
            <a href="$Link" $AttributesHTML>
                <% if $IconClass %>
                    <span class="menu__icon $IconClass"></span>
                <% else_if $HasCSSIcon %>
                    <span class="menu__icon icon icon-16 icon-{$Icon}">&nbsp;</span>
                <% else %>
                    <span class="menu__icon font-icon-circle-star">&nbsp;</span>
                <% end_if %>
                <span class="text">$Title</span>
            </a>
            <% if $Children %>
                <ul class="group">
                    <% loop $Children %>
                        <li class="$LinkingMode <% if $LinkingMode == 'link' %><% else %>opened<% end_if %>" id="Menu-$Code" title="$Title.ATT">
                            <a href="$Link" $AttributesHTML>
                                <% if $HasCSSIcon %>
                                    <span class="menu__icon icon icon-16 icon-{$Icon}">&nbsp;</span>
                                <% else_if $IconClass %>
                                    <span class="menu__icon $IconClass"></span>
                                <% else %>
                                    <span class="menu__icon font-icon-circle-star">&nbsp;</span>
                                <% end_if %>
                                <span class="text">$Title</span>
                            </a>
                        </li>
                    <% end_loop %>
                </ul>
            <% end_if %>
        </li>
    <% end_loop %>
</ul>
