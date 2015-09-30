{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.ConnectionTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of connection types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingConnectionTypesList@.
module Network.Google.Resource.DFAReporting.ConnectionTypes.List
    (
    -- * REST Resource
      ConnectionTypesListResource

    -- * Creating a Request
    , connectionTypesList'
    , ConnectionTypesList'

    -- * Request Lenses
    , ctlQuotaUser
    , ctlPrettyPrint
    , ctlUserIp
    , ctlProfileId
    , ctlKey
    , ctlOauthToken
    , ctlFields
    , ctlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingConnectionTypesList@ which the
-- 'ConnectionTypesList'' request conforms to.
type ConnectionTypesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "connectionTypes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] ConnectionTypesListResponse

-- | Retrieves a list of connection types.
--
-- /See:/ 'connectionTypesList'' smart constructor.
data ConnectionTypesList' = ConnectionTypesList'
    { _ctlQuotaUser   :: !(Maybe Text)
    , _ctlPrettyPrint :: !Bool
    , _ctlUserIp      :: !(Maybe Text)
    , _ctlProfileId   :: !Int64
    , _ctlKey         :: !(Maybe Text)
    , _ctlOauthToken  :: !(Maybe Text)
    , _ctlFields      :: !(Maybe Text)
    , _ctlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlQuotaUser'
--
-- * 'ctlPrettyPrint'
--
-- * 'ctlUserIp'
--
-- * 'ctlProfileId'
--
-- * 'ctlKey'
--
-- * 'ctlOauthToken'
--
-- * 'ctlFields'
--
-- * 'ctlAlt'
connectionTypesList'
    :: Int64 -- ^ 'profileId'
    -> ConnectionTypesList'
connectionTypesList' pCtlProfileId_ =
    ConnectionTypesList'
    { _ctlQuotaUser = Nothing
    , _ctlPrettyPrint = True
    , _ctlUserIp = Nothing
    , _ctlProfileId = pCtlProfileId_
    , _ctlKey = Nothing
    , _ctlOauthToken = Nothing
    , _ctlFields = Nothing
    , _ctlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctlQuotaUser :: Lens' ConnectionTypesList' (Maybe Text)
ctlQuotaUser
  = lens _ctlQuotaUser (\ s a -> s{_ctlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ctlPrettyPrint :: Lens' ConnectionTypesList' Bool
ctlPrettyPrint
  = lens _ctlPrettyPrint
      (\ s a -> s{_ctlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctlUserIp :: Lens' ConnectionTypesList' (Maybe Text)
ctlUserIp
  = lens _ctlUserIp (\ s a -> s{_ctlUserIp = a})

-- | User profile ID associated with this request.
ctlProfileId :: Lens' ConnectionTypesList' Int64
ctlProfileId
  = lens _ctlProfileId (\ s a -> s{_ctlProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctlKey :: Lens' ConnectionTypesList' (Maybe Text)
ctlKey = lens _ctlKey (\ s a -> s{_ctlKey = a})

-- | OAuth 2.0 token for the current user.
ctlOauthToken :: Lens' ConnectionTypesList' (Maybe Text)
ctlOauthToken
  = lens _ctlOauthToken
      (\ s a -> s{_ctlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctlFields :: Lens' ConnectionTypesList' (Maybe Text)
ctlFields
  = lens _ctlFields (\ s a -> s{_ctlFields = a})

-- | Data format for the response.
ctlAlt :: Lens' ConnectionTypesList' Alt
ctlAlt = lens _ctlAlt (\ s a -> s{_ctlAlt = a})

instance GoogleRequest ConnectionTypesList' where
        type Rs ConnectionTypesList' =
             ConnectionTypesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ConnectionTypesList'{..}
          = go _ctlQuotaUser (Just _ctlPrettyPrint) _ctlUserIp
              _ctlProfileId
              _ctlKey
              _ctlOauthToken
              _ctlFields
              (Just _ctlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConnectionTypesListResource)
                      r
                      u
