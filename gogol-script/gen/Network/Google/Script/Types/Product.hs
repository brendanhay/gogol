{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Script.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Script.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Script.Types.Sum

-- | If a \`run\` call succeeds but the script function (or Apps Script
-- itself) throws an exception, the response body\'s \`error\` field will
-- contain this \`Status\` object.
--
-- /See:/ 'status' smart constructor.
data Status = Status
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | An array that contains a single \`ExecutionError\` object that provides
-- information about the nature of the error.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | The response will not arrive until the function finishes executing. The
-- maximum runtime is listed in the guide to [limitations in Apps
-- Script](https:\/\/developers.google.com\/apps-script\/guides\/services\/quotas#current_limitations).
-- If the script function returns successfully, the \`response\` field will
-- contain an \`ExecutionResponse\` object with the function\'s return
-- value in the object\'s \`result\` field. If the script function (or Apps
-- Script itself) throws an exception, the \`error\` field will contain a
-- \`Status\` object. The \`Status\` object\'s \`details\` field will
-- contain an array with a single \`ExecutionError\` object that provides
-- information about the nature of the error. If the \`run\` call itself
-- fails (for example, because of a malformed request or an authorization
-- error), the method will return an HTTP response code in the 4XX range
-- with a different format for the response body. Client libraries will
-- automatically convert a 4XX response into an exception class.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
    Operation
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | This field is not used.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | If a \`run\` call succeeds but the script function (or Apps Script
-- itself) throws an exception, this field will contain a \`Status\`
-- object. The \`Status\` object\'s \`details\` field will contain an array
-- with a single \`ExecutionError\` object that provides information about
-- the nature of the error.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | If the script function returns successfully, this field will contain an
-- \`ExecutionResponse\` object with the function\'s return value as the
-- object\'s \`result\` field.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | This field is not used.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | This field is not used.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A request to run the function in a script. The script is identified by
-- the specified \`script_id\`. Executing a function on a script will
-- return results based on the implementation of the script.
--
-- /See:/ 'executionRequest' smart constructor.
data ExecutionRequest = ExecutionRequest
    { _erFunction     :: !(Maybe Text)
    , _erSessionState :: !(Maybe Text)
    , _erDevMode      :: !(Maybe Bool)
    , _erParameters   :: !(Maybe [JSONValue])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExecutionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erFunction'
--
-- * 'erSessionState'
--
-- * 'erDevMode'
--
-- * 'erParameters'
executionRequest
    :: ExecutionRequest
executionRequest =
    ExecutionRequest
    { _erFunction = Nothing
    , _erSessionState = Nothing
    , _erDevMode = Nothing
    , _erParameters = Nothing
    }

-- | The name of the function to execute in the given script. The name does
-- not include parentheses or parameters.
erFunction :: Lens' ExecutionRequest (Maybe Text)
erFunction
  = lens _erFunction (\ s a -> s{_erFunction = a})

-- | This field is not used.
erSessionState :: Lens' ExecutionRequest (Maybe Text)
erSessionState
  = lens _erSessionState
      (\ s a -> s{_erSessionState = a})

-- | If \`true\` and the user is an owner of the script, the script runs at
-- the most recently saved version rather than the version deployed for use
-- with the Execution API. Optional; default is \`false\`.
erDevMode :: Lens' ExecutionRequest (Maybe Bool)
erDevMode
  = lens _erDevMode (\ s a -> s{_erDevMode = a})

-- | The parameters to be passed to the function being executed. The type for
-- each parameter should match the expected type in Apps Script. Parameters
-- cannot be Apps Script-specific objects (such as a \`Document\` or
-- \`Calendar\`); they can only be primitive types such as a \`string\`,
-- \`number\`, \`array\`, \`object\`, or \`boolean\`. Optional.
erParameters :: Lens' ExecutionRequest [JSONValue]
erParameters
  = lens _erParameters (\ s a -> s{_erParameters = a})
      . _Default
      . _Coerce

instance FromJSON ExecutionRequest where
        parseJSON
          = withObject "ExecutionRequest"
              (\ o ->
                 ExecutionRequest <$>
                   (o .:? "function") <*> (o .:? "sessionState") <*>
                     (o .:? "devMode")
                     <*> (o .:? "parameters" .!= mempty))

instance ToJSON ExecutionRequest where
        toJSON ExecutionRequest{..}
          = object
              (catMaybes
                 [("function" .=) <$> _erFunction,
                  ("sessionState" .=) <$> _erSessionState,
                  ("devMode" .=) <$> _erDevMode,
                  ("parameters" .=) <$> _erParameters])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A stack trace through the script that shows where the execution failed.
--
-- /See:/ 'scriptStackTraceElement' smart constructor.
data ScriptStackTraceElement = ScriptStackTraceElement
    { _ssteFunction   :: !(Maybe Text)
    , _ssteLineNumber :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScriptStackTraceElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssteFunction'
--
-- * 'ssteLineNumber'
scriptStackTraceElement
    :: ScriptStackTraceElement
scriptStackTraceElement =
    ScriptStackTraceElement
    { _ssteFunction = Nothing
    , _ssteLineNumber = Nothing
    }

-- | The name of the function that failed.
ssteFunction :: Lens' ScriptStackTraceElement (Maybe Text)
ssteFunction
  = lens _ssteFunction (\ s a -> s{_ssteFunction = a})

-- | The line number where the script failed.
ssteLineNumber :: Lens' ScriptStackTraceElement (Maybe Int32)
ssteLineNumber
  = lens _ssteLineNumber
      (\ s a -> s{_ssteLineNumber = a})
      . mapping _Coerce

instance FromJSON ScriptStackTraceElement where
        parseJSON
          = withObject "ScriptStackTraceElement"
              (\ o ->
                 ScriptStackTraceElement <$>
                   (o .:? "function") <*> (o .:? "lineNumber"))

instance ToJSON ScriptStackTraceElement where
        toJSON ScriptStackTraceElement{..}
          = object
              (catMaybes
                 [("function" .=) <$> _ssteFunction,
                  ("lineNumber" .=) <$> _ssteLineNumber])

-- | An object that provides information about the nature of an error in the
-- Apps Script Execution API. If an \`run\` call succeeds but the script
-- function (or Apps Script itself) throws an exception, the response
-- body\'s \`error\` field will contain a \`Status\` object. The \`Status\`
-- object\'s \`details\` field will contain an array with a single one of
-- these \`ExecutionError\` objects.
--
-- /See:/ 'executionError' smart constructor.
data ExecutionError = ExecutionError
    { _eeScriptStackTraceElements :: !(Maybe [ScriptStackTraceElement])
    , _eeErrorType                :: !(Maybe Text)
    , _eeErrorMessage             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExecutionError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeScriptStackTraceElements'
--
-- * 'eeErrorType'
--
-- * 'eeErrorMessage'
executionError
    :: ExecutionError
executionError =
    ExecutionError
    { _eeScriptStackTraceElements = Nothing
    , _eeErrorType = Nothing
    , _eeErrorMessage = Nothing
    }

-- | An array of objects that provide a stack trace through the script to
-- show where the execution failed, with the deepest call first.
eeScriptStackTraceElements :: Lens' ExecutionError [ScriptStackTraceElement]
eeScriptStackTraceElements
  = lens _eeScriptStackTraceElements
      (\ s a -> s{_eeScriptStackTraceElements = a})
      . _Default
      . _Coerce

-- | The error type, for example \`TypeError\` or \`ReferenceError\`. If the
-- error type is unavailable, this field is not included.
eeErrorType :: Lens' ExecutionError (Maybe Text)
eeErrorType
  = lens _eeErrorType (\ s a -> s{_eeErrorType = a})

-- | The error message thrown by Apps Script, usually localized into the
-- user\'s language.
eeErrorMessage :: Lens' ExecutionError (Maybe Text)
eeErrorMessage
  = lens _eeErrorMessage
      (\ s a -> s{_eeErrorMessage = a})

instance FromJSON ExecutionError where
        parseJSON
          = withObject "ExecutionError"
              (\ o ->
                 ExecutionError <$>
                   (o .:? "scriptStackTraceElements" .!= mempty) <*>
                     (o .:? "errorType")
                     <*> (o .:? "errorMessage"))

instance ToJSON ExecutionError where
        toJSON ExecutionError{..}
          = object
              (catMaybes
                 [("scriptStackTraceElements" .=) <$>
                    _eeScriptStackTraceElements,
                  ("errorType" .=) <$> _eeErrorType,
                  ("errorMessage" .=) <$> _eeErrorMessage])

-- | This field is not used.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata = OperationMetadata
    { _omAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
    OperationMetadata
    { _omAddtional = _Coerce # pOmAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | If the script function returns successfully, this field will contain an
-- \`ExecutionResponse\` object with the function\'s return value as the
-- object\'s \`result\` field.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse = OperationResponse
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse
    { _orAddtional = _Coerce # pOrAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | An object that provides the return value of a function executed through
-- the Apps Script Execution API. If an \`run\` call succeeds and the
-- script function returns successfully, the response body\'s \`response\`
-- field will contain this \`ExecutionResponse\` object.
--
-- /See:/ 'executionResponse' smart constructor.
newtype ExecutionResponse = ExecutionResponse
    { _erResult :: Maybe JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erResult'
executionResponse
    :: ExecutionResponse
executionResponse =
    ExecutionResponse
    { _erResult = Nothing
    }

-- | The return value of the script function. The type will match the type
-- returned in Apps Script. Functions called through the Execution API
-- cannot return Apps Script-specific objects (such as a \`Document\` or
-- \`Calendar\`); they can only return primitive types such as a
-- \`string\`, \`number\`, \`array\`, \`object\`, or \`boolean\`.
erResult :: Lens' ExecutionResponse (Maybe JSONValue)
erResult = lens _erResult (\ s a -> s{_erResult = a})

instance FromJSON ExecutionResponse where
        parseJSON
          = withObject "ExecutionResponse"
              (\ o -> ExecutionResponse <$> (o .:? "result"))

instance ToJSON ExecutionResponse where
        toJSON ExecutionResponse{..}
          = object (catMaybes [("result" .=) <$> _erResult])
