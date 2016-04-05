#!/usr/bin/env stack
{- stack runghc --verbosity info --package pandoc-types-1.16.1 -}

import Text.Pandoc.JSON

main :: IO ()
main = toJSONFilter removeHtmlBlocks

removeHtmlBlocks :: Block -> Block
removeHtmlBlocks (RawBlock (Format "html") _) = Plain []
removeHtmlBlocks x = x
