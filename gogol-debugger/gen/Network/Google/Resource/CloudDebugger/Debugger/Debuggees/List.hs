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
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the debuggees that the user has access to.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.list@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.List
    (
    -- * REST Resource
      DebuggerDebuggeesListResource

    -- * Creating a Request
    , debuggerDebuggeesList
    , DebuggerDebuggeesList

    -- * Request Lenses
    , ddlXgafv
    , ddlIncludeInactive
    , ddlUploadProtocol
    , ddlProject
    , ddlAccessToken
    , ddlUploadType
    , ddlClientVersion
    , ddlCallback
    ) where

import Network.Google.Debugger.Types
import Network.Google.Prelude

-- | A resource alias for @clouddebugger.debugger.debuggees.list@ method which the
-- 'DebuggerDebuggeesList' request conforms to.
type DebuggerDebuggeesListResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "includeInactive" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "project" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "clientVersion" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDebuggeesResponse

-- | Lists all the debuggees that the user has access to.
--
-- /See:/ 'debuggerDebuggeesList' smart constructor.
data DebuggerDebuggeesList =
  DebuggerDebuggeesList'
    { _ddlXgafv :: !(Maybe Xgafv)
    , _ddlIncludeInactive :: !(Maybe Bool)
    , _ddlUploadProtocol :: !(Maybe Text)
    , _ddlProject :: !(Maybe Text)
    , _ddlAccessToken :: !(Maybe Text)
    , _ddlUploadType :: !(Maybe Text)
    , _ddlClientVersion :: !(Maybe Text)
    , _ddlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebuggerDebuggeesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddlXgafv'
--
-- * 'ddlIncludeInactive'
--
-- * 'ddlUploadProtocol'
--
-- * 'ddlProject'
--
-- * 'ddlAccessToken'
--
-- * 'ddlUploadType'
--
-- * 'ddlClientVersion'
--
-- * 'ddlCallback'
debuggerDebuggeesList
    :: DebuggerDebuggeesList
debuggerDebuggeesList =
  DebuggerDebuggeesList'
    { _ddlXgafv = Nothing
    , _ddlIncludeInactive = Nothing
    , _ddlUploadProtocol = Nothing
    , _ddlProject = Nothing
    , _ddlAccessToken = Nothing
    , _ddlUploadType = Nothing
    , _ddlClientVersion = Nothing
    , _ddlCallback = Nothing
    }


-- | V1 error format.
ddlXgafv :: Lens' DebuggerDebuggeesList (Maybe Xgafv)
ddlXgafv = lens _ddlXgafv (\ s a -> s{_ddlXgafv = a})

-- | When set to \`true\`, the result includes all debuggees. Otherwise, the
-- result includes only debuggees that are active.
ddlIncludeInactive :: Lens' DebuggerDebuggeesList (Maybe Bool)
ddlIncludeInactive
  = lens _ddlIncludeInactive
      (\ s a -> s{_ddlIncludeInactive = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddlUploadProtocol :: Lens' DebuggerDebuggeesList (Maybe Text)
ddlUploadProtocol
  = lens _ddlUploadProtocol
      (\ s a -> s{_ddlUploadProtocol = a})

-- | Required. Project number of a Google Cloud project whose debuggees to
-- list.
ddlProject :: Lens' DebuggerDebuggeesList (Maybe Text)
ddlProject
  = lens _ddlProject (\ s a -> s{_ddlProject = a})

-- | OAuth access token.
ddlAccessToken :: Lens' DebuggerDebuggeesList (Maybe Text)
ddlAccessToken
  = lens _ddlAccessToken
      (\ s a -> s{_ddlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddlUploadType :: Lens' DebuggerDebuggeesList (Maybe Text)
ddlUploadType
  = lens _ddlUploadType
      (\ s a -> s{_ddlUploadType = a})

-- | Required. The client version making the call. Schema:
-- \`domain\/type\/version\` (e.g., \`google.com\/intellij\/v1\`).
ddlClientVersion :: Lens' DebuggerDebuggeesList (Maybe Text)
ddlClientVersion
  = lens _ddlClientVersion
      (\ s a -> s{_ddlClientVersion = a})

-- | JSONP
ddlCallback :: Lens' DebuggerDebuggeesList (Maybe Text)
ddlCallback
  = lens _ddlCallback (\ s a -> s{_ddlCallback = a})

instance GoogleRequest DebuggerDebuggeesList where
        type Rs DebuggerDebuggeesList = ListDebuggeesResponse
        type Scopes DebuggerDebuggeesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient DebuggerDebuggeesList'{..}
          = go _ddlXgafv _ddlIncludeInactive _ddlUploadProtocol
              _ddlProject
              _ddlAccessToken
              _ddlUploadType
              _ddlClientVersion
              _ddlCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy :: Proxy DebuggerDebuggeesListResource)
                      mempty
