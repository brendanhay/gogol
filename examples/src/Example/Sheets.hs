{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module Example.Sheets where

---------------------------------------------------------------------------------

import Control.Lens ((.~), (<&>), (?~))
import Data.Aeson.Types
import Data.Function
import Data.Generics.Product.Fields (field)
import Data.Proxy
import Data.Text (Text)
import Gogol
import Gogol.Sheets as Sheets
import System.IO (stdout)

---------------------------------------------------------------------------------

spreadsheetsScope :: Proxy '[Sheets.Spreadsheets'FullControl]
spreadsheetsScope = Proxy

-- |
-- This gets the Information about an spreadsheet.
-- In order to be able to run these examples you need to
-- create a service acount from google's developers console
-- and copy the dowloaded json file to ~/.config/gcloud/application_default_credentials.json.
--
-- you must also share with your service the spreadsheet that you want to get the info of.
-- In order to do this you must share the sheet with the email address of your service
-- which is in your downloaded service config file.
--
-- after doing above step just pass the sreadsheet id to the function.
exampleGetSheet :: Text -> IO Spreadsheet
exampleGetSheet sheetID = do
  lgr <- newLogger Debug stdout
  env <- newEnv <&> (envLogger .~ lgr) . (envScopes .~ spreadsheetsScope)
  runResourceT $
    send env (newSheetsSpreadsheetsGet sheetID)

-- |
-- you pass the sheet id and a range (eg. "sheet1!A1:C3") in that sheet
-- and it retreives the values in the specified range
exampleGetValue :: Text -> Text -> IO ValueRange
exampleGetValue sheetID range = do
  lgr <- newLogger Debug stdout
  env <- newEnv <&> (envLogger .~ lgr) . (envScopes .~ spreadsheetsScope)
  runResourceT $
    send env (newSheetsSpreadsheetsValuesGet sheetID range)

exampleAppendValue :: Text -> Text -> [[Value]] -> IO AppendValuesResponse
exampleAppendValue sheetID range values = do
  lgr <- newLogger Debug stdout
  env <- newEnv <&> (envLogger .~ lgr) . (envScopes .~ spreadsheetsScope)
  runResourceT $
    send env (newSheetsSpreadsheetsValuesAppend (Sheets.newValueRange & field @"values" ?~ values) range sheetID)
