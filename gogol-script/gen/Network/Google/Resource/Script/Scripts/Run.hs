{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Script.Scripts.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a function in an Apps Script project that has been deployed for use
-- with the Apps Script Execution API. This method requires authorization
-- with an OAuth 2.0 token that includes at least one of the scopes listed
-- in the [Authentication](#authentication) section; script projects that
-- do not require authorization cannot be executed through this API. To
-- find the correct scopes to include in the authentication token, open the
-- project in the script editor, then select **File > Project properties**
-- and click the **Scopes** tab.
--
-- /See:/ <https://developers.google.com/apps-script/execution/rest/v1/run Google Apps Script Execution API Reference> for @script.scripts.run@.
module Network.Google.Resource.Script.Scripts.Run
    (
    -- * REST Resource
      ScriptsRunResource

    -- * Creating a Request
    , scriptsRun
    , ScriptsRun

    -- * Request Lenses
    , srXgafv
    , srUploadProtocol
    , srPp
    , srAccessToken
    , srUploadType
    , srPayload
    , srBearerToken
    , srScriptId
    , srCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.scripts.run@ method which the
-- 'ScriptsRun' request conforms to.
type ScriptsRunResource =
     "v1" :>
       "scripts" :>
         CaptureMode "scriptId" "run" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ExecutionRequest :>
                             Post '[JSON] Operation

-- | Runs a function in an Apps Script project that has been deployed for use
-- with the Apps Script Execution API. This method requires authorization
-- with an OAuth 2.0 token that includes at least one of the scopes listed
-- in the [Authentication](#authentication) section; script projects that
-- do not require authorization cannot be executed through this API. To
-- find the correct scopes to include in the authentication token, open the
-- project in the script editor, then select **File > Project properties**
-- and click the **Scopes** tab.
--
-- /See:/ 'scriptsRun' smart constructor.
data ScriptsRun = ScriptsRun
    { _srXgafv          :: !(Maybe Text)
    , _srUploadProtocol :: !(Maybe Text)
    , _srPp             :: !Bool
    , _srAccessToken    :: !(Maybe Text)
    , _srUploadType     :: !(Maybe Text)
    , _srPayload        :: !ExecutionRequest
    , _srBearerToken    :: !(Maybe Text)
    , _srScriptId       :: !Text
    , _srCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScriptsRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srXgafv'
--
-- * 'srUploadProtocol'
--
-- * 'srPp'
--
-- * 'srAccessToken'
--
-- * 'srUploadType'
--
-- * 'srPayload'
--
-- * 'srBearerToken'
--
-- * 'srScriptId'
--
-- * 'srCallback'
scriptsRun
    :: ExecutionRequest -- ^ 'srPayload'
    -> Text -- ^ 'srScriptId'
    -> ScriptsRun
scriptsRun pSrPayload_ pSrScriptId_ =
    ScriptsRun
    { _srXgafv = Nothing
    , _srUploadProtocol = Nothing
    , _srPp = True
    , _srAccessToken = Nothing
    , _srUploadType = Nothing
    , _srPayload = pSrPayload_
    , _srBearerToken = Nothing
    , _srScriptId = pSrScriptId_
    , _srCallback = Nothing
    }

-- | V1 error format.
srXgafv :: Lens' ScriptsRun (Maybe Text)
srXgafv = lens _srXgafv (\ s a -> s{_srXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srUploadProtocol :: Lens' ScriptsRun (Maybe Text)
srUploadProtocol
  = lens _srUploadProtocol
      (\ s a -> s{_srUploadProtocol = a})

-- | Pretty-print response.
srPp :: Lens' ScriptsRun Bool
srPp = lens _srPp (\ s a -> s{_srPp = a})

-- | OAuth access token.
srAccessToken :: Lens' ScriptsRun (Maybe Text)
srAccessToken
  = lens _srAccessToken
      (\ s a -> s{_srAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srUploadType :: Lens' ScriptsRun (Maybe Text)
srUploadType
  = lens _srUploadType (\ s a -> s{_srUploadType = a})

-- | Multipart request metadata.
srPayload :: Lens' ScriptsRun ExecutionRequest
srPayload
  = lens _srPayload (\ s a -> s{_srPayload = a})

-- | OAuth bearer token.
srBearerToken :: Lens' ScriptsRun (Maybe Text)
srBearerToken
  = lens _srBearerToken
      (\ s a -> s{_srBearerToken = a})

-- | The project key of the script to be executed. To find the project key,
-- open the project in the script editor, then select **File > Project
-- properties**.
srScriptId :: Lens' ScriptsRun Text
srScriptId
  = lens _srScriptId (\ s a -> s{_srScriptId = a})

-- | JSONP
srCallback :: Lens' ScriptsRun (Maybe Text)
srCallback
  = lens _srCallback (\ s a -> s{_srCallback = a})

instance GoogleRequest ScriptsRun where
        type Rs ScriptsRun = Operation
        type Scopes ScriptsRun =
             '["https://mail.google.com/",
               "https://www.google.com/calendar/feeds",
               "https://www.google.com/m8/feeds",
               "https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/forms",
               "https://www.googleapis.com/auth/forms.currentonly",
               "https://www.googleapis.com/auth/groups",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ScriptsRun{..}
          = go _srScriptId _srXgafv _srUploadProtocol
              (Just _srPp)
              _srAccessToken
              _srUploadType
              _srBearerToken
              _srCallback
              (Just AltJSON)
              _srPayload
              scriptService
          where go
                  = buildClient (Proxy :: Proxy ScriptsRunResource)
                      mempty
