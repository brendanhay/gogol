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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesGet@.
module Network.Google.Resource.DFAReporting.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet'
    , SitesGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIP
    , sgProFileId
    , sgKey
    , sgId
    , sgOAuthToken
    , sgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesGet@ which the
-- 'SitesGet'' request conforms to.
type SitesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Site

-- | Gets one site by ID.
--
-- /See:/ 'sitesGet'' smart constructor.
data SitesGet' = SitesGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIP      :: !(Maybe Text)
    , _sgProFileId   :: !Int64
    , _sgKey         :: !(Maybe Key)
    , _sgId          :: !Int64
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIP'
--
-- * 'sgProFileId'
--
-- * 'sgKey'
--
-- * 'sgId'
--
-- * 'sgOAuthToken'
--
-- * 'sgFields'
sitesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SitesGet'
sitesGet' pSgProFileId_ pSgId_ =
    SitesGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIP = Nothing
    , _sgProFileId = pSgProFileId_
    , _sgKey = Nothing
    , _sgId = pSgId_
    , _sgOAuthToken = Nothing
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SitesGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SitesGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' SitesGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | User profile ID associated with this request.
sgProFileId :: Lens' SitesGet' Int64
sgProFileId
  = lens _sgProFileId (\ s a -> s{_sgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SitesGet' (Maybe Key)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | Site ID.
sgId :: Lens' SitesGet' Int64
sgId = lens _sgId (\ s a -> s{_sgId = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SitesGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SitesGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SitesGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesGet'{..}
          = go _sgProFileId _sgId _sgQuotaUser
              (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesGetResource) r
                      u
