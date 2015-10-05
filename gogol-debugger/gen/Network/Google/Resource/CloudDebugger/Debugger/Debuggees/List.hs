{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , ddlQuotaUser
    , ddlPrettyPrint
    , ddlIncludeInactive
    , ddlUploadProtocol
    , ddlProject
    , ddlPp
    , ddlAccessToken
    , ddlUploadType
    , ddlBearerToken
    , ddlKey
    , ddlOAuthToken
    , ddlFields
    , ddlCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerDebuggerDebuggeesList@ which the
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
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListDebuggeesResponse

-- | Lists all the debuggees that the user can set breakpoints to.
--
-- /See:/ 'debuggerDebuggeesList'' smart constructor.
data DebuggerDebuggeesList' = DebuggerDebuggeesList'
    { _ddlXgafv           :: !(Maybe Text)
    , _ddlQuotaUser       :: !(Maybe Text)
    , _ddlPrettyPrint     :: !Bool
    , _ddlIncludeInactive :: !(Maybe Bool)
    , _ddlUploadProtocol  :: !(Maybe Text)
    , _ddlProject         :: !(Maybe Text)
    , _ddlPp              :: !Bool
    , _ddlAccessToken     :: !(Maybe Text)
    , _ddlUploadType      :: !(Maybe Text)
    , _ddlBearerToken     :: !(Maybe Text)
    , _ddlKey             :: !(Maybe Key)
    , _ddlOAuthToken      :: !(Maybe OAuthToken)
    , _ddlFields          :: !(Maybe Text)
    , _ddlCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddlXgafv'
--
-- * 'ddlQuotaUser'
--
-- * 'ddlPrettyPrint'
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
-- * 'ddlKey'
--
-- * 'ddlOAuthToken'
--
-- * 'ddlFields'
--
-- * 'ddlCallback'
debuggerDebuggeesList'
    :: DebuggerDebuggeesList'
debuggerDebuggeesList' =
    DebuggerDebuggeesList'
    { _ddlXgafv = Nothing
    , _ddlQuotaUser = Nothing
    , _ddlPrettyPrint = True
    , _ddlIncludeInactive = Nothing
    , _ddlUploadProtocol = Nothing
    , _ddlProject = Nothing
    , _ddlPp = True
    , _ddlAccessToken = Nothing
    , _ddlUploadType = Nothing
    , _ddlBearerToken = Nothing
    , _ddlKey = Nothing
    , _ddlOAuthToken = Nothing
    , _ddlFields = Nothing
    , _ddlCallback = Nothing
    }

-- | V1 error format.
ddlXgafv :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlXgafv = lens _ddlXgafv (\ s a -> s{_ddlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ddlQuotaUser :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlQuotaUser
  = lens _ddlQuotaUser (\ s a -> s{_ddlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddlPrettyPrint :: Lens' DebuggerDebuggeesList' Bool
ddlPrettyPrint
  = lens _ddlPrettyPrint
      (\ s a -> s{_ddlPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddlKey :: Lens' DebuggerDebuggeesList' (Maybe Key)
ddlKey = lens _ddlKey (\ s a -> s{_ddlKey = a})

-- | OAuth 2.0 token for the current user.
ddlOAuthToken :: Lens' DebuggerDebuggeesList' (Maybe OAuthToken)
ddlOAuthToken
  = lens _ddlOAuthToken
      (\ s a -> s{_ddlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddlFields :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlFields
  = lens _ddlFields (\ s a -> s{_ddlFields = a})

-- | JSONP
ddlCallback :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlCallback
  = lens _ddlCallback (\ s a -> s{_ddlCallback = a})

instance GoogleAuth DebuggerDebuggeesList' where
        authKey = ddlKey . _Just
        authToken = ddlOAuthToken . _Just

instance GoogleRequest DebuggerDebuggeesList' where
        type Rs DebuggerDebuggeesList' =
             ListDebuggeesResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u DebuggerDebuggeesList'{..}
          = go _ddlXgafv _ddlIncludeInactive _ddlUploadProtocol
              _ddlProject
              (Just _ddlPp)
              _ddlAccessToken
              _ddlUploadType
              _ddlBearerToken
              _ddlCallback
              _ddlQuotaUser
              (Just _ddlPrettyPrint)
              _ddlFields
              _ddlKey
              _ddlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DebuggerDebuggeesListResource)
                      r
                      u
