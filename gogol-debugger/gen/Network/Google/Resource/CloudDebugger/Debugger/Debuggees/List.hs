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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the debuggees that the user can set breakpoints to.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @CloudDebuggerDebuggerDebuggeesList@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.List
    (
    -- * REST Resource
      DebuggerDebuggeesListResource

    -- * Creating a Request
    , debuggerDebuggeesList'
    , DebuggerDebuggeesList'

    -- * Request Lenses
    , ddlXgafv
    , ddlIncludeInactive
    , ddlUploadProtocol
    , ddlProject
    , ddlPp
    , ddlAccessToken
    , ddlUploadType
    , ddlBearerToken
    , ddlCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerDebuggerDebuggeesList@ method which the
-- 'DebuggerDebuggeesList'' request conforms to.
type DebuggerDebuggeesListResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "includeInactive" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "project" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListDebuggeesResponse

-- | Lists all the debuggees that the user can set breakpoints to.
--
-- /See:/ 'debuggerDebuggeesList'' smart constructor.
data DebuggerDebuggeesList' = DebuggerDebuggeesList'
    { _ddlXgafv           :: !(Maybe Text)
    , _ddlIncludeInactive :: !(Maybe Bool)
    , _ddlUploadProtocol  :: !(Maybe Text)
    , _ddlProject         :: !(Maybe Text)
    , _ddlPp              :: !Bool
    , _ddlAccessToken     :: !(Maybe Text)
    , _ddlUploadType      :: !(Maybe Text)
    , _ddlBearerToken     :: !(Maybe Text)
    , _ddlCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesList'' with the minimum fields required to make a request.
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
-- * 'ddlPp'
--
-- * 'ddlAccessToken'
--
-- * 'ddlUploadType'
--
-- * 'ddlBearerToken'
--
-- * 'ddlCallback'
debuggerDebuggeesList'
    :: DebuggerDebuggeesList'
debuggerDebuggeesList' =
    DebuggerDebuggeesList'
    { _ddlXgafv = Nothing
    , _ddlIncludeInactive = Nothing
    , _ddlUploadProtocol = Nothing
    , _ddlProject = Nothing
    , _ddlPp = True
    , _ddlAccessToken = Nothing
    , _ddlUploadType = Nothing
    , _ddlBearerToken = Nothing
    , _ddlCallback = Nothing
    }

-- | V1 error format.
ddlXgafv :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlXgafv = lens _ddlXgafv (\ s a -> s{_ddlXgafv = a})

-- | When set to true the result includes all debuggees, otherwise only
-- debugees that are active.
ddlIncludeInactive :: Lens' DebuggerDebuggeesList' (Maybe Bool)
ddlIncludeInactive
  = lens _ddlIncludeInactive
      (\ s a -> s{_ddlIncludeInactive = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddlUploadProtocol :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlUploadProtocol
  = lens _ddlUploadProtocol
      (\ s a -> s{_ddlUploadProtocol = a})

-- | Set to the project number of the Google Cloud Platform to list the
-- debuggees that are part of that project.
ddlProject :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlProject
  = lens _ddlProject (\ s a -> s{_ddlProject = a})

-- | Pretty-print response.
ddlPp :: Lens' DebuggerDebuggeesList' Bool
ddlPp = lens _ddlPp (\ s a -> s{_ddlPp = a})

-- | OAuth access token.
ddlAccessToken :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlAccessToken
  = lens _ddlAccessToken
      (\ s a -> s{_ddlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddlUploadType :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlUploadType
  = lens _ddlUploadType
      (\ s a -> s{_ddlUploadType = a})

-- | OAuth bearer token.
ddlBearerToken :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlBearerToken
  = lens _ddlBearerToken
      (\ s a -> s{_ddlBearerToken = a})

-- | JSONP
ddlCallback :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlCallback
  = lens _ddlCallback (\ s a -> s{_ddlCallback = a})

instance GoogleRequest DebuggerDebuggeesList' where
        type Rs DebuggerDebuggeesList' =
             ListDebuggeesResponse
        requestClient DebuggerDebuggeesList'{..}
          = go _ddlXgafv _ddlIncludeInactive _ddlUploadProtocol
              _ddlProject
              (Just _ddlPp)
              _ddlAccessToken
              _ddlUploadType
              _ddlBearerToken
              _ddlCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy :: Proxy DebuggerDebuggeesListResource)
                      mempty
