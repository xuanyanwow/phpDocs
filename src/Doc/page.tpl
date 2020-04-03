<html lang="cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/font-awesome/5.12.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/github-markdown-css/4.0.0/github-markdown.css" rel="stylesheet">
    <style>
        .deprecated{
            color: red;
        }
        .fa-angle-right::before {
            padding-right:0.3rem
        }
        .fa-angle-down::before {
            padding-right:0.3rem
        }

        @media (max-width: 600px) {
            .right-menu {
                display:none;
            }
            #live2d-widget {
                display: none;
            }
        }

        .right-menu > li{
            list-style-type: none;
            padding-left:5px;
            padding-top: 5px;
        }
        .right-menu > li > a.active{
            color:#ff0006;
        }

        @media screen and (min-width: 700px) {
            .layout-2 .sideBar {
                width: 0 !important;
            }
            .layout-2 .mainContent {
                padding-left: 0 !important;
            }
            .navBar-menu-button {
                display: none;
            }
        }

        @media screen and (max-width: 700px) {
            .layout-1 .sideBar {
                width: 0 !important;
            }
            .layout-1 .mainContent {
                padding-left: 0 !important;
            }
            .container .navBar .navInnerRight {
                position: fixed !important;
                top: 0rem;
                left: 0 !important;
                right: 0 !important;
                padding: 0 1.5rem .5rem 1.5rem;
                display: none;
            }
            .navInnerRight > div {
                display: block !important;
                margin-left: 0 !important;
            }
            .navSearch > input {
                width: 100% !important;
                box-sizing: border-box;
            }
            .navBar-menu-button {
                display: block;
                float: right;
            }
            .sideBar-toggle-button {
                display: none;
            }
        }
    </style>
    <style>
        html,
        body {
            padding: 0;
            margin: 0;
            background-color: #fff;
        }
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 16px;
            color: #2c3e50;
        }
        a{text-decoration:none}
        a:link {color: #4e4b4b}
        a:visited {color: #4e4b4b}
        a:hover {color: #4e4b4b}
        a:active {color: #4e4b4b}

        .container .navBar {
            position: fixed;
            z-index: 20;
            top: 0;
            left: 0;
            right: 0;
            height: 0rem;
            background-color: #fff;
            box-sizing: border-box;
            border-bottom: 1px solid #eaecef;
            padding: 0.7rem 1.5rem;
            line-height: 2.2rem;
            display: block;
        }
        .container .navBar .navInner img {
            height: 2.2rem;
            min-width: 2.2rem;
            margin-right: 0.8rem;
            vertical-align: top;
        }
        .container .navBar .navInnerRight {
            padding-left: 1.5rem;
            box-sizing: border-box;
            background-color: #fff;
            white-space: nowrap;
            font-size: 0.9rem;
            position: absolute;
            right: 1.5rem;
            top: 0.7rem;
            display: -webkit-box;
            display: flex;
        }
        .container .navBar .navInnerRight .navSearch {
            display: inline-block;
            position: relative;
            margin-right: 1rem;
        }
        .container .navBar .navInnerRight .navSearch .resultList {
            position: absolute;
            border: 1px solid #eaecef;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 0.6em;
            margin-top: 0.2em;
            width: 300px;
            max-height: 500px;
            overflow-y: scroll;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem {
            padding: 0.4em;
            border-radius: 0.3em;
            border-bottom: 1px dashed #eeeeee;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem:last-child {
            border-bottom: none;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem:hover {
            background: #eeeeee;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem .resultLink {
            display: block;
            text-decoration: none;
            line-height: 1.5em;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem .resultLink .resultTitle {
            color: #1b1f23;
            font-weight: 700;
            font-size: 1em;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem .resultLink .resultDesc {
            color: #3d454d;
            font-weight: 400;
            font-size: 0.9em;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            -webkit-line-clamp: 1;
        }
        .container .navBar .navInnerRight .navSearch .resultList .resultItem .resultLink .resultDesc .searchKeyword {
            color: #ff0561;
        }
        .container .navBar .navInnerRight .navSearch input {
            cursor: text;
            width: 10rem;
            height: 2rem;
            color: #4e6e8e;
            display: inline-block;
            border: 1px solid #cfd4db;
            border-radius: 2rem;
            font-size: 0.9rem;
            line-height: 2rem;
            padding: 0 0.5rem 0 2rem;
            outline: none;
            -webkit-transition: all 0.2s ease;
            transition: all 0.2s ease;
            background: #fff url(/Images/docNavSearchLogo.svg) 0.6rem 0.5rem no-repeat;
            background-size: auto;
            background-size: 1rem;
        }
        .container .navBar .navInnerRight .navItem {
            position: relative;
            display: inline-block;
            margin-left: 1.5rem;
            line-height: 2rem;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .container .navBar .navInnerRight .navItem .dropdown-wrapper .nav-dropdown {
            position: absolute;
            border: 1px solid #eaecef;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 0.3em;
            margin-top: 0.5em;
            margin-left: -0.5em;
            width: 80px;
            max-height: 80px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            list-style: none;
        }
        .container .navBar .navInnerRight .navItem .dropdown-wrapper .nav-dropdown a {
            text-decoration: none;
            color: #1b1f23;
        }
        .container .navBar .navInnerRight .navItem .dropdown-wrapper .dropdown-title {
            display: block;
            font-size: 0.9rem;
            font-family: inherit;
            cursor: inherit;
            padding: inherit;
            line-height: 1.4rem;
            background: transparent;
            border: none;
            font-weight: 500;
            color: #2c3e50;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            outline: none;
        }
        .container .navBar .navInnerRight .navItem .dropdown-wrapper .dropdown-title .arrow {
            border-left: 4px solid transparent;
            border-right: 4px solid transparent;
            border-top: 6px solid #ccc;
            border-bottom: 0;
            vertical-align: middle;
            margin-top: -1px;
            margin-left: 0.4rem;
        }
        .container .sideBar {
            font-size: 16px;
            background-color: #fff;
            width: 15rem;
            position: fixed;
            z-index: 10;
            margin: 0;
            top: 0rem;
            left: 0;
            bottom: 0;
            box-sizing: border-box;
            border-right: 1px solid #eaecef;
            overflow-y: auto;
            display: block;
        }
        .container .sideBar::-webkit-scrollbar {
            width: 2px;
            height: 9px;
        }
        .container .sideBar::-webkit-scrollbar-track {
            width: 2px;
            background-color: #d2d3d6;
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
        }
        .container .sideBar::-webkit-scrollbar-thumb {
            background-color: #606d71;
            background-clip: padding-box;
            min-height: 28px;
            -webkit-border-radius: 2em;
            -moz-border-radius: 2em;
            border-radius: 2em;
        }
        .container .sideBar::-webkit-scrollbar-thumb:hover {
            background-color: #fff;
        }
        .container .sideBar > ul {
            padding: 1.5rem 0;
            line-height: 1.7;
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            padding-inline-start: 1em;
            margin: 0;
            list-style-type: none;
            box-sizing: border-box;
            font-size: 1.1em;
            font-weight: bold;
            text-transform: capitalize;
            border-left: 0.5rem solid transparent;
        }
        .container .sideBar > ul li {
            display: list-item;
            text-align: -webkit-match-parent;
            list-style-type: none;
            padding: 0.3em 0.3em;
            cursor: pointer;
        }
        .container .sideBar > ul li.active ul {
            display: block;
        }
        .container .sideBar > ul li > ul {
            padding: 0.3em 0.8em;
            list-style-type: none;
            box-sizing: border-box;
            font-size: 0.8em;
            font-weight: bold;
            color: #3f5163;
            display: none;
        }
        .container .sideBar > ul li > ul li {
            padding-top: 0.3rem;
        }
        .container .sideBar > ul li > ul li > li {
            padding-top: 0;
            display: block;
        }
        .container .sideBar > ul li a {
            color: #2c3e50;
            width: 100%;
            font-size: 1.1em;
            font-weight: 400;
            border-left: 0.25rem solid transparent;
            padding: 0.35rem 1rem 0.35rem 0.25rem;
            line-height: 1.4;
            box-sizing: border-box;
            cursor: pointer;
            text-decoration: none;
            padding-left: 0.3rem;
            display: inline-block;
        }
        .container .mainContent {
            /*padding-left: 15rem;*/
            padding-bottom: 2rem;
            display: block;
        }
        @font-face {
            font-family: octicons-link;
            src: url(data:font/woff;charset=utf-8;base64,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) format('woff');
        }
        .container .mainContent .markdown-body .octicon {
            display: inline-block;
            fill: currentColor;
            vertical-align: text-bottom;
        }
        .container .mainContent .markdown-body .anchor {
            float: left;
            line-height: 1;
            margin-left: -20px;
            padding-right: 4px;
        }
        .container .mainContent .markdown-body .anchor:focus {
            outline: none;
        }
        .container .mainContent .markdown-body h1 .octicon-link,
        .container .mainContent .markdown-body h2 .octicon-link,
        .container .mainContent .markdown-body h3 .octicon-link,
        .container .mainContent .markdown-body h4 .octicon-link,
        .container .mainContent .markdown-body h5 .octicon-link,
        .container .mainContent .markdown-body h6 .octicon-link {
            color: #1b1f23;
            vertical-align: middle;
            visibility: hidden;
        }
        .container .mainContent .markdown-body h1:hover .anchor,
        .container .mainContent .markdown-body h2:hover .anchor,
        .container .mainContent .markdown-body h3:hover .anchor,
        .container .mainContent .markdown-body h4:hover .anchor,
        .container .mainContent .markdown-body h5:hover .anchor,
        .container .mainContent .markdown-body h6:hover .anchor {
            text-decoration: none;
        }
        .container .mainContent .markdown-body h1:hover .anchor .octicon-link,
        .container .mainContent .markdown-body h2:hover .anchor .octicon-link,
        .container .mainContent .markdown-body h3:hover .anchor .octicon-link,
        .container .mainContent .markdown-body h4:hover .anchor .octicon-link,
        .container .mainContent .markdown-body h5:hover .anchor .octicon-link,
        .container .mainContent .markdown-body h6:hover .anchor .octicon-link {
            visibility: visible;
        }
        .container .mainContent .markdown-body {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
            color: #24292e;
            font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
            font-size: 16px;
            line-height: 1.5;
            word-wrap: break-word;
        }
        .container .mainContent .markdown-body .pl-c {
            color: #6a737d;
        }
        .container .mainContent .markdown-body .pl-c1,
        .container .mainContent .markdown-body .pl-s .pl-v {
            color: #005cc5;
        }
        .container .mainContent .markdown-body .pl-e,
        .container .mainContent .markdown-body .pl-en {
            color: #6f42c1;
        }
        .container .mainContent .markdown-body .pl-s .pl-s1,
        .container .mainContent .markdown-body .pl-smi {
            color: #24292e;
        }
        .container .mainContent .markdown-body .pl-ent {
            color: #22863a;
        }
        .container .mainContent .markdown-body .pl-k {
            color: #d73a49;
        }
        .container .mainContent .markdown-body .pl-pds,
        .container .mainContent .markdown-body .pl-s,
        .container .mainContent .markdown-body .pl-s .pl-pse .pl-s1,
        .container .mainContent .markdown-body .pl-sr,
        .container .mainContent .markdown-body .pl-sr .pl-cce,
        .container .mainContent .markdown-body .pl-sr .pl-sra,
        .container .mainContent .markdown-body .pl-sr .pl-sre {
            color: #032f62;
        }
        .container .mainContent .markdown-body .pl-smw,
        .container .mainContent .markdown-body .pl-v {
            color: #e36209;
        }
        .container .mainContent .markdown-body .pl-bu {
            color: #b31d28;
        }
        .container .mainContent .markdown-body .pl-ii {
            background-color: #b31d28;
            color: #fafbfc;
        }
        .container .mainContent .markdown-body .pl-c2 {
            background-color: #d73a49;
            color: #fafbfc;
        }
        .container .mainContent .markdown-body .pl-c2:before {
            content: "^M";
        }
        .container .mainContent .markdown-body .pl-sr .pl-cce {
            color: #22863a;
            font-weight: 700;
        }
        .container .mainContent .markdown-body .pl-ml {
            color: #735c0f;
        }
        .container .mainContent .markdown-body .pl-mh,
        .container .mainContent .markdown-body .pl-mh .pl-en,
        .container .mainContent .markdown-body .pl-ms {
            color: #005cc5;
            font-weight: 700;
        }
        .container .mainContent .markdown-body .pl-mi {
            color: #24292e;
            font-style: italic;
        }
        .container .mainContent .markdown-body .pl-mb {
            color: #24292e;
            font-weight: 700;
        }
        .container .mainContent .markdown-body .pl-md {
            background-color: #ffeef0;
            color: #b31d28;
        }
        .container .mainContent .markdown-body .pl-mi1 {
            background-color: #f0fff4;
            color: #22863a;
        }
        .container .mainContent .markdown-body .pl-mc {
            background-color: #ffebda;
            color: #e36209;
        }
        .container .mainContent .markdown-body .pl-mi2 {
            background-color: #005cc5;
            color: #f6f8fa;
        }
        .container .mainContent .markdown-body .pl-mdr {
            color: #6f42c1;
            font-weight: 700;
        }
        .container .mainContent .markdown-body .pl-ba {
            color: #586069;
        }
        .container .mainContent .markdown-body .pl-sg {
            color: #959da5;
        }
        .container .mainContent .markdown-body .pl-corl {
            color: #032f62;
            text-decoration: underline;
        }
        .container .mainContent .markdown-body details {
            display: block;
        }
        .container .mainContent .markdown-body summary {
            display: list-item;
        }
        .container .mainContent .markdown-body a {
            background-color: transparent;
        }
        .container .mainContent .markdown-body a:active,
        .container .mainContent .markdown-body a:hover {
            outline-width: 0;
        }
        .container .mainContent .markdown-body strong {
            font-weight: inherit;
            font-weight: bolder;
        }
        .container .mainContent .markdown-body h1 {
            font-size: 2em;
            margin: 0.67em 0;
        }
        .container .mainContent .markdown-body img {
            border-style: none;
        }
        .container .mainContent .markdown-body code,
        .container .mainContent .markdown-body kbd,
        .container .mainContent .markdown-body pre {
            font-family: monospace, monospace;
            font-size: 1em;
        }
        .container .mainContent .markdown-body hr {
            box-sizing: content-box;
            height: 0;
            overflow: visible;
        }
        .container .mainContent .markdown-body input {
            font: inherit;
            margin: 0;
        }
        .container .mainContent .markdown-body input {
            overflow: visible;
        }
        .container .mainContent .markdown-body [type=checkbox] {
            box-sizing: border-box;
            padding: 0;
        }
        .container .mainContent .markdown-body * {
            box-sizing: border-box;
        }
        .container .mainContent .markdown-body input {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }
        .container .mainContent .markdown-body a {
            color: #0366d6;
            text-decoration: none;
        }
        .container .mainContent .markdown-body a:hover {
            text-decoration: underline;
        }
        .container .mainContent .markdown-body strong {
            font-weight: 600;
        }
        .container .mainContent .markdown-body hr {
            background: 0 0;
            border: 0;
            border-bottom: 1px solid #dfe2e5;
            height: 0;
            margin: 15px 0;
            overflow: hidden;
        }
        .container .mainContent .markdown-body hr:before {
            content: "";
            display: table;
        }
        .container .mainContent .markdown-body hr:after {
            clear: both;
            content: "";
            display: table;
        }
        .container .mainContent .markdown-body table {
            border-collapse: collapse;
            border-spacing: 0;
        }
        .container .mainContent .markdown-body td,
        .container .mainContent .markdown-body th {
            padding: 0;
        }
        .container .mainContent .markdown-body details summary {
            cursor: pointer;
        }
        .container .mainContent .markdown-body h1,
        .container .mainContent .markdown-body h2,
        .container .mainContent .markdown-body h3,
        .container .mainContent .markdown-body h4,
        .container .mainContent .markdown-body h5,
        .container .mainContent .markdown-body h6 {
            margin-bottom: 0;
            margin-top: 0;
        }
        .container .mainContent .markdown-body h1 {
            font-size: 32px;
        }
        .container .mainContent .markdown-body h1,
        .container .mainContent .markdown-body h2 {
            font-weight: 600;
        }
        .container .mainContent .markdown-body h2 {
            font-size: 24px;
        }
        .container .mainContent .markdown-body h3 {
            font-size: 20px;
        }
        .container .mainContent .markdown-body h3,
        .container .mainContent .markdown-body h4 {
            font-weight: 600;
        }

        .container .mainContent .markdown-body h3{
            border-left: 4px solid #33cbff;
            color: #858585;
            margin: 2em 0;
            padding-left: 20px;
        }


        .container .mainContent .markdown-body h4 {
            font-size: 16px;
            border-left: 4px solid red;
            padding-left: 20px;
        }
        .container .mainContent .markdown-body h5 {
            font-size: 14px;
        }
        .container .mainContent .markdown-body h5,
        .container .mainContent .markdown-body h6 {
            font-weight: 600;
        }
        .container .mainContent .markdown-body h6 {
            font-size: 12px;
        }
        .container .mainContent .markdown-body p {
            margin-bottom: 10px;
            margin-top: 0;
        }
        .container .mainContent .markdown-body blockquote {
            margin: 0;
        }
        .container .mainContent .markdown-body ol,
        .container .mainContent .markdown-body ul {
            margin-bottom: 0;
            margin-top: 0;
            padding-left: 0;
        }
        .container .mainContent .markdown-body ol ol,
        .container .mainContent .markdown-body ul ol {
            list-style-type: lower-roman;
        }
        .container .mainContent .markdown-body ol ol ol,
        .container .mainContent .markdown-body ol ul ol,
        .container .mainContent .markdown-body ul ol ol,
        .container .mainContent .markdown-body ul ul ol {
            list-style-type: lower-alpha;
        }
        .container .mainContent .markdown-body dd {
            margin-left: 0;
        }
        .container .mainContent .markdown-body code,
        .container .mainContent .markdown-body pre {
            font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace;
            font-size: 12px;
        }
        .container .mainContent .markdown-body pre {
            margin-bottom: 0;
            margin-top: 0;
        }
        .container .mainContent .markdown-body input::-webkit-inner-spin-button,
        .container .mainContent .markdown-body input::-webkit-outer-spin-button {
            -webkit-appearance: none;
            appearance: none;
            margin: 0;
        }
        .container .mainContent .markdown-body .border {
            border: 1px solid #e1e4e8 !important;
        }
        .container .mainContent .markdown-body .border-0 {
            border: 0 !important;
        }
        .container .mainContent .markdown-body .border-bottom {
            border-bottom: 1px solid #e1e4e8 !important;
        }
        .container .mainContent .markdown-body .rounded-1 {
            border-radius: 3px !important;
        }
        .container .mainContent .markdown-body .bg-white {
            background-color: #fff !important;
        }
        .container .mainContent .markdown-body .bg-gray-light {
            background-color: #fafbfc !important;
        }
        .container .mainContent .markdown-body .text-gray-light {
            color: #6a737d !important;
        }
        .container .mainContent .markdown-body .mb-0 {
            margin-bottom: 0 !important;
        }
        .container .mainContent .markdown-body .my-2 {
            margin-bottom: 8px !important;
            margin-top: 8px !important;
        }
        .container .mainContent .markdown-body .pl-0 {
            padding-left: 0 !important;
        }
        .container .mainContent .markdown-body .py-0 {
            padding-bottom: 0 !important;
            padding-top: 0 !important;
        }
        .container .mainContent .markdown-body .pl-1 {
            padding-left: 4px !important;
        }
        .container .mainContent .markdown-body .pl-2 {
            padding-left: 8px !important;
        }
        .container .mainContent .markdown-body .py-2 {
            padding-bottom: 8px !important;
            padding-top: 8px !important;
        }
        .container .mainContent .markdown-body .pl-3,
        .container .mainContent .markdown-body .px-3 {
            padding-left: 16px !important;
        }
        .container .mainContent .markdown-body .px-3 {
            padding-right: 16px !important;
        }
        .container .mainContent .markdown-body .pl-4 {
            padding-left: 24px !important;
        }
        .container .mainContent .markdown-body .pl-5 {
            padding-left: 32px !important;
        }
        .container .mainContent .markdown-body .pl-6 {
            padding-left: 40px !important;
        }
        .container .mainContent .markdown-body .f6 {
            font-size: 12px !important;
        }
        .container .mainContent .markdown-body .lh-condensed {
            line-height: 1.25 !important;
        }
        .container .mainContent .markdown-body .text-bold {
            font-weight: 600 !important;
        }
        .container .mainContent .markdown-body:before {
            content: "";
            display: table;
        }
        .container .mainContent .markdown-body:after {
            clear: both;
            content: "";
            display: table;
        }
        .container .mainContent .markdown-body > :first-child {
            margin-top: 0 !important;
        }
        .container .mainContent .markdown-body > :last-child {
            margin-bottom: 0 !important;
        }
        .container .mainContent .markdown-body a:not([href]) {
            color: inherit;
            text-decoration: none;
        }
        .container .mainContent .markdown-body blockquote,
        .container .mainContent .markdown-body dl,
        .container .mainContent .markdown-body ol,
        .container .mainContent .markdown-body p,
        .container .mainContent .markdown-body pre,
        .container .mainContent .markdown-body table,
        .container .mainContent .markdown-body ul {
            margin-bottom: 16px;
            margin-top: 0;
        }
        .container .mainContent .markdown-body hr {
            background-color: #e1e4e8;
            border: 0;
            height: 0.25em;
            margin: 24px 0;
            padding: 0;
        }
        .container .mainContent .markdown-body blockquote {
            border-left: 0.25em solid #dfe2e5;
            color: #6a737d;
            padding: 0 1em;
        }
        .container .mainContent .markdown-body blockquote > :first-child {
            margin-top: 0;
        }
        .container .mainContent .markdown-body blockquote > :last-child {
            margin-bottom: 0;
        }
        .container .mainContent .markdown-body kbd {
            background-color: #fafbfc;
            border: 1px solid #c6cbd1;
            border-bottom-color: #959da5;
            border-radius: 3px;
            box-shadow: inset 0 -1px 0 #959da5;
            color: #444d56;
            display: inline-block;
            font-size: 11px;
            line-height: 10px;
            padding: 3px 5px;
            vertical-align: middle;
        }
        .container .mainContent .markdown-body h1,
        .container .mainContent .markdown-body h2,
        .container .mainContent .markdown-body h3,
        .container .mainContent .markdown-body h4,
        .container .mainContent .markdown-body h5,
        .container .mainContent .markdown-body h6 {
            font-weight: 600;
            line-height: 1.25;
            margin-bottom: 16px;
            margin-top: 24px;
        }
        .container .mainContent .markdown-body h1 {
            font-size: 2em;
        }
        .container .mainContent .markdown-body h1,
        .container .mainContent .markdown-body h2 {
            border-bottom: 1px solid #eaecef;
            padding-bottom: 0.3em;
        }
        .container .mainContent .markdown-body h2 {
            font-size: 1.5em;
        }
        .container .mainContent .markdown-body h3 {
            font-size: 1.25em;
        }
        .container .mainContent .markdown-body h4 {
            font-size: 1em;
        }
        .container .mainContent .markdown-body h5 {
            font-size: 0.875em;
        }
        .container .mainContent .markdown-body h6 {
            color: #6a737d;
            font-size: 0.85em;
        }
        .container .mainContent .markdown-body ol,
        .container .mainContent .markdown-body ul {
            padding-left: 2em;
        }
        .container .mainContent .markdown-body ol ol,
        .container .mainContent .markdown-body ol ul,
        .container .mainContent .markdown-body ul ol,
        .container .mainContent .markdown-body ul ul {
            margin-bottom: 0;
            margin-top: 0;
        }
        .container .mainContent .markdown-body li {
            word-wrap: break-all;
        }
        .container .mainContent .markdown-body li > p {
            margin-top: 16px;
        }
        .container .mainContent .markdown-body li + li {
            margin-top: 0.25em;
        }
        .container .mainContent .markdown-body dl {
            padding: 0;
        }
        .container .mainContent .markdown-body dl dt {
            font-size: 1em;
            font-style: italic;
            font-weight: 600;
            margin-top: 16px;
            padding: 0;
        }
        .container .mainContent .markdown-body dl dd {
            margin-bottom: 16px;
            padding: 0 16px;
        }
        .container .mainContent .markdown-body table {
            display: block;
            overflow: auto;
            width: 100%;
        }
        .container .mainContent .markdown-body table th {
            font-weight: 600;
        }
        .container .mainContent .markdown-body table td,
        .container .mainContent .markdown-body table th {
            border: 1px solid #dfe2e5;
            padding: 6px 13px;
        }
        .container .mainContent .markdown-body table tr {
            background-color: #fff;
            border-top: 1px solid #c6cbd1;
        }
        .container .mainContent .markdown-body table tr:nth-child(2n) {
            background-color: #f6f8fa;
        }
        .container .mainContent .markdown-body img {
            background-color: #fff;
            box-sizing: content-box;
            max-width: 100%;
        }
        .container .mainContent .markdown-body img[align=right] {
            padding-left: 20px;
        }
        .container .mainContent .markdown-body img[align=left] {
            padding-right: 20px;
        }
        .container .mainContent .markdown-body p code {

            border-radius: 2px;
            color: #e96900;
            font-size: 0.85rem;
            margin: 0 2px;
            padding: 3px 5px;
            white-space: pre-wrap;
            background-color: #f8f8f8;

        }
        .container .mainContent .markdown-body pre {
            word-wrap: normal;
        }
        .container .mainContent .markdown-body pre > code {
            background: 0 0;
            border: 0;
            font-size: 100%;
            margin: 0;
            padding: 0;
            white-space: pre;
            word-break: normal;
        }
        .container .mainContent .markdown-body .highlight {
            margin-bottom: 16px;
        }
        .container .mainContent .markdown-body .highlight pre {
            margin-bottom: 0;
            word-break: normal;
        }
        .container .mainContent .markdown-body .highlight pre,
        .container .mainContent .markdown-body pre {
            border-radius: 3px;
            font-size: 85%;
            line-height: 1.45;
            overflow: auto;
            padding: 16px;
        }
        .container .mainContent .markdown-body pre code {
            background-color: transparent;
            border: 0;
            display: inline;
            line-height: inherit;
            margin: 0;
            max-width: auto;
            overflow: visible;
            padding: 0;
            word-wrap: normal;
        }
        .container .mainContent .markdown-body .commit-tease-sha {
            color: #444d56;
            display: inline-block;
            font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace;
            font-size: 90%;
        }
        .container .mainContent .markdown-body .blob-wrapper {
            border-bottom-left-radius: 3px;
            border-bottom-right-radius: 3px;
            overflow-x: auto;
            overflow-y: hidden;
        }
        .container .mainContent .markdown-body .blob-wrapper-embedded {
            max-height: 240px;
            overflow-y: auto;
        }
        .container .mainContent .markdown-body .blob-num {
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            color: rgba(27, 31, 35, 0.3);
            cursor: pointer;
            font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace;
            font-size: 12px;
            line-height: 20px;
            min-width: 50px;
            padding-left: 10px;
            padding-right: 10px;
            text-align: right;
            user-select: none;
            vertical-align: top;
            white-space: nowrap;
            width: 1%;
        }
        .container .mainContent .markdown-body .blob-num:hover {
            color: rgba(27, 31, 35, 0.6);
        }
        .container .mainContent .markdown-body .blob-num:before {
            content: attr(data-line-number);
        }
        .container .mainContent .markdown-body .blob-code {
            line-height: 20px;
            padding-left: 10px;
            padding-right: 10px;
            position: relative;
            vertical-align: top;
        }
        .container .mainContent .markdown-body .blob-code-inner {
            color: #24292e;
            font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace;
            font-size: 12px;
            overflow: visible;
            white-space: pre;
            word-wrap: normal;
        }
        .container .mainContent .markdown-body .pl-token.active,
        .container .mainContent .markdown-body .pl-token:hover {
            background: #ffea7f;
            cursor: pointer;
        }
        .container .mainContent .markdown-body kbd {
            background-color: #fafbfc;
            border: 1px solid #d1d5da;
            border-bottom-color: #c6cbd1;
            border-radius: 3px;
            box-shadow: inset 0 -1px 0 #c6cbd1;
            color: #444d56;
            display: inline-block;
            font: 11px SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace;
            line-height: 10px;
            padding: 3px 5px;
            vertical-align: middle;
        }
        .container .mainContent .markdown-body :checked + .radio-label {
            border-color: #0366d6;
            position: relative;
            z-index: 1;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="1"] {
            -moz-tab-size: 1;
            tab-size: 1;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="2"] {
            -moz-tab-size: 2;
            tab-size: 2;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="3"] {
            -moz-tab-size: 3;
            tab-size: 3;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="4"] {
            -moz-tab-size: 4;
            tab-size: 4;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="5"] {
            -moz-tab-size: 5;
            tab-size: 5;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="6"] {
            -moz-tab-size: 6;
            tab-size: 6;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="7"] {
            -moz-tab-size: 7;
            tab-size: 7;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="8"] {
            -moz-tab-size: 8;
            tab-size: 8;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="9"] {
            -moz-tab-size: 9;
            tab-size: 9;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="10"] {
            -moz-tab-size: 10;
            tab-size: 10;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="11"] {
            -moz-tab-size: 11;
            tab-size: 11;
        }
        .container .mainContent .markdown-body .tab-size[data-tab-size="12"] {
            -moz-tab-size: 12;
            tab-size: 12;
        }
        .container .mainContent .markdown-body .task-list-item {
            list-style-type: none;
        }
        .container .mainContent .markdown-body .task-list-item + .task-list-item {
            margin-top: 3px;
        }
        .container .mainContent .markdown-body .task-list-item input {
            margin: 0 0.2em 0.25em -1.6em;
            vertical-align: middle;
        }
        .container .mainContent .markdown-body hr {
            border-bottom-color: #eee;
        }
        .container .mainContent .markdown-body .pl-0 {
            padding-left: 0 !important;
        }
        .container .mainContent .markdown-body .pl-1 {
            padding-left: 4px !important;
        }
        .container .mainContent .markdown-body .pl-2 {
            padding-left: 8px !important;
        }
        .container .mainContent .markdown-body .pl-3 {
            padding-left: 16px !important;
        }
        .container .mainContent .markdown-body .pl-4 {
            padding-left: 24px !important;
        }
        .container .mainContent .markdown-body .pl-5 {
            padding-left: 32px !important;
        }
        .container .mainContent .markdown-body .pl-6 {
            padding-left: 40px !important;
        }
        .container .mainContent .markdown-body .pl-7 {
            padding-left: 48px !important;
        }
        .container .mainContent .markdown-body .pl-8 {
            padding-left: 64px !important;
        }
        .container .mainContent .markdown-body .pl-9 {
            padding-left: 80px !important;
        }
        .container .mainContent .markdown-body .pl-10 {
            padding-left: 96px !important;
        }
        .container .mainContent .markdown-body .pl-11 {
            padding-left: 112px !important;
        }
        .container .mainContent .markdown-body .pl-12 {
            padding-left: 128px !important;
        }
        .container .mainContent .content {
            max-width: 740px;
            margin: 0 auto;
            padding: 2rem 2.5rem;
        }
    </style>
</head>
<body>
<div class="container layout-1">
    <aside class="sideBar">
    {$SIDEBAR}
    </aside>
    <section class="mainContent">
        <div class="content markdown-body">{$BODY}</div>
        <div class="right-menu" id="right-menu"></div>
    </section>
</div>
<script>
    $(function () {
        $.each($('.sideBar li:has(li)'),function(){
            // var data = $(this).append( 'asd');
            $(this).attr('isOpen',0).addClass('fa fa-angle-right');
        });

        $('.sideBar li:has(ul)').click(function(event){
            if (this == event.target) {
                $(this).children().toggle('fast');
                if($(this).attr('isOpen') == 1){
                    $(this).attr('isOpen',0);
                    $(this).removeClass('fa fa-angle-down');
                    $(this).addClass('fa fa-angle-right');
                }else{
                    $(this).attr('isOpen',1);
                    $(this).removeClass('fa fa-angle-right');
                    $(this).addClass('fa fa-angle-down');
                }
            }
        });
    });

</script>
</body>
</html>
