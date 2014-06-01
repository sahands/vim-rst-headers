vim-rst-headers
===============

Simple vim plug-in to format reStructuredText headers.

Before:

.. code:: rst

    :date: 2013-11-27 19:24
    :tags: computational-geometry, math, geometry, html5, jsxgraph, javascript
    :category: Experiments
    :slug: tangent-line-to-two-circles-html5-demo-applet
    :author: Sahand Saba
    :summary: An HTML5 applet demonstrating step by step how to find tangent lines
              to two circles, using the JSXGraph framework.


After:

.. code:: rst

    :date:         2013-11-27 19:24
    :tags:         computational-geometry, math, geometry, html5, jsxgraph, javascript
    :category:     Experiments
    :slug:         tangent-line-to-two-circles-html5-demo-applet
    :author:       Sahand Saba
    :summary:      An HTML5 applet demonstrating step by step how to find tangent lines
                   to two circles, using the JSXGraph framework.


Install
=======
Install with Vundle (or NeoBundle, but I haven't tested it with NeoBundle yet).

Usage
=====
Select the range containing the headers and call ``RstHeaders``.
