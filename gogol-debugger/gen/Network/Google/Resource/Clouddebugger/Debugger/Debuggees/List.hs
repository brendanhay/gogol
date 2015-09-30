{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouddebugger.Debugger.Debuggees.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the debuggees that the user can set breakpoints to.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @ClouddebuggerDebuggerDebuggeesList@.
module Clouddebugger.Debugger.Debuggees.List
    (
    -- * REST Resource
      DebuggerDebuggeesListAPI

    -- * Creating a Request
    , debuggerDebuggeesList
    , DebuggerDebuggeesList

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
    , ddlOauthToken
    , ddlFields
    , ddlCallback
    , ddlAlt
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouddebuggerDebuggerDebuggeesList@ which the
-- 'DebuggerDebuggeesList' request conforms to.
type DebuggerDebuggeesListAPI =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           QueryParam "includeInactive" Bool :>
             QueryParam "project" Text :>
               Get '[JSON] ListDebuggeesResponse

-- | Lists all the debuggees that the user can set breakpoints to.
--
-- /See:/ 'debuggerDebuggeesList' smart constructor.
data DebuggerDebuggeesList = DebuggerDebuggeesList
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
    , _ddlKey             :: !(Maybe Text)
    , _ddlOauthToken      :: !(Maybe Text)
    , _ddlFields          :: !(Maybe Text)
    , _ddlCallback        :: !(Maybe Text)
    , _ddlAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ddlOauthToken'
--
-- * 'ddlFields'
--
-- * 'ddlCallback'
--
-- * 'ddlAlt'
debuggerDebuggeesList
    :: DebuggerDebuggeesList
debuggerDebuggeesList =
    DebuggerDebuggeesList
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
    , _ddlOauthToken = Nothing
    , _ddlFields = Nothing
    , _ddlCallback = Nothing
    , _ddlAlt = "json"
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
ddlKey :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlKey = lens _ddlKey (\ s a -> s{_ddlKey = a})

-- | OAuth 2.0 token for the current user.
ddlOauthToken :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlOauthToken
  = lens _ddlOauthToken
      (\ s a -> s{_ddlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddlFields :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlFields
  = lens _ddlFields (\ s a -> s{_ddlFields = a})

-- | JSONP
ddlCallback :: Lens' DebuggerDebuggeesList' (Maybe Text)
ddlCallback
  = lens _ddlCallback (\ s a -> s{_ddlCallback = a})

-- | Data format for response.
ddlAlt :: Lens' DebuggerDebuggeesList' Text
ddlAlt = lens _ddlAlt (\ s a -> s{_ddlAlt = a})

instance GoogleRequest DebuggerDebuggeesList' where
        type Rs DebuggerDebuggeesList' =
             ListDebuggeesResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u DebuggerDebuggeesList{..}
          = go _ddlXgafv _ddlQuotaUser _ddlPrettyPrint
              _ddlIncludeInactive
              _ddlUploadProtocol
              _ddlProject
              _ddlPp
              _ddlAccessToken
              _ddlUploadType
              _ddlBearerToken
              _ddlKey
              _ddlOauthToken
              _ddlFields
              _ddlCallback
              _ddlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DebuggerDebuggeesListAPI)
                      r
                      u
