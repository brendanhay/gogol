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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one creative group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsGet@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Get
    (
    -- * REST Resource
      CreativeGroupsGetResource

    -- * Creating a Request
    , creativeGroupsGet'
    , CreativeGroupsGet'

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIP
    , cggProFileId
    , cggKey
    , cggId
    , cggOAuthToken
    , cggFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsGet@ which the
-- 'CreativeGroupsGet'' request conforms to.
type CreativeGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] CreativeGroup

-- | Gets one creative group by ID.
--
-- /See:/ 'creativeGroupsGet'' smart constructor.
data CreativeGroupsGet' = CreativeGroupsGet'
    { _cggQuotaUser   :: !(Maybe Text)
    , _cggPrettyPrint :: !Bool
    , _cggUserIP      :: !(Maybe Text)
    , _cggProFileId   :: !Int64
    , _cggKey         :: !(Maybe AuthKey)
    , _cggId          :: !Int64
    , _cggOAuthToken  :: !(Maybe OAuthToken)
    , _cggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIP'
--
-- * 'cggProFileId'
--
-- * 'cggKey'
--
-- * 'cggId'
--
-- * 'cggOAuthToken'
--
-- * 'cggFields'
creativeGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeGroupsGet'
creativeGroupsGet' pCggProFileId_ pCggId_ =
    CreativeGroupsGet'
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIP = Nothing
    , _cggProFileId = pCggProFileId_
    , _cggKey = Nothing
    , _cggId = pCggId_
    , _cggOAuthToken = Nothing
    , _cggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CreativeGroupsGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CreativeGroupsGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIP :: Lens' CreativeGroupsGet' (Maybe Text)
cggUserIP
  = lens _cggUserIP (\ s a -> s{_cggUserIP = a})

-- | User profile ID associated with this request.
cggProFileId :: Lens' CreativeGroupsGet' Int64
cggProFileId
  = lens _cggProFileId (\ s a -> s{_cggProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CreativeGroupsGet' (Maybe AuthKey)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | Creative group ID.
cggId :: Lens' CreativeGroupsGet' Int64
cggId = lens _cggId (\ s a -> s{_cggId = a})

-- | OAuth 2.0 token for the current user.
cggOAuthToken :: Lens' CreativeGroupsGet' (Maybe OAuthToken)
cggOAuthToken
  = lens _cggOAuthToken
      (\ s a -> s{_cggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CreativeGroupsGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

instance GoogleAuth CreativeGroupsGet' where
        authKey = cggKey . _Just
        authToken = cggOAuthToken . _Just

instance GoogleRequest CreativeGroupsGet' where
        type Rs CreativeGroupsGet' = CreativeGroup
        request = requestWith dFAReportingRequest
        requestWith rq CreativeGroupsGet'{..}
          = go _cggProFileId _cggId _cggQuotaUser
              (Just _cggPrettyPrint)
              _cggUserIP
              _cggFields
              _cggKey
              _cggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CreativeGroupsGetResource)
                      rq
