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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one directory site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySitesGet@.
module Network.Google.Resource.DFAReporting.DirectorySites.Get
    (
    -- * REST Resource
      DirectorySitesGetResource

    -- * Creating a Request
    , directorySitesGet'
    , DirectorySitesGet'

    -- * Request Lenses
    , dsgQuotaUser
    , dsgPrettyPrint
    , dsgUserIp
    , dsgProfileId
    , dsgKey
    , dsgId
    , dsgOauthToken
    , dsgFields
    , dsgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySitesGet@ which the
-- 'DirectorySitesGet'' request conforms to.
type DirectorySitesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySites" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] DirectorySite

-- | Gets one directory site by ID.
--
-- /See:/ 'directorySitesGet'' smart constructor.
data DirectorySitesGet' = DirectorySitesGet'
    { _dsgQuotaUser   :: !(Maybe Text)
    , _dsgPrettyPrint :: !Bool
    , _dsgUserIp      :: !(Maybe Text)
    , _dsgProfileId   :: !Int64
    , _dsgKey         :: !(Maybe Text)
    , _dsgId          :: !Int64
    , _dsgOauthToken  :: !(Maybe Text)
    , _dsgFields      :: !(Maybe Text)
    , _dsgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgQuotaUser'
--
-- * 'dsgPrettyPrint'
--
-- * 'dsgUserIp'
--
-- * 'dsgProfileId'
--
-- * 'dsgKey'
--
-- * 'dsgId'
--
-- * 'dsgOauthToken'
--
-- * 'dsgFields'
--
-- * 'dsgAlt'
directorySitesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> DirectorySitesGet'
directorySitesGet' pDsgProfileId_ pDsgId_ =
    DirectorySitesGet'
    { _dsgQuotaUser = Nothing
    , _dsgPrettyPrint = True
    , _dsgUserIp = Nothing
    , _dsgProfileId = pDsgProfileId_
    , _dsgKey = Nothing
    , _dsgId = pDsgId_
    , _dsgOauthToken = Nothing
    , _dsgFields = Nothing
    , _dsgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsgQuotaUser :: Lens' DirectorySitesGet' (Maybe Text)
dsgQuotaUser
  = lens _dsgQuotaUser (\ s a -> s{_dsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsgPrettyPrint :: Lens' DirectorySitesGet' Bool
dsgPrettyPrint
  = lens _dsgPrettyPrint
      (\ s a -> s{_dsgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsgUserIp :: Lens' DirectorySitesGet' (Maybe Text)
dsgUserIp
  = lens _dsgUserIp (\ s a -> s{_dsgUserIp = a})

-- | User profile ID associated with this request.
dsgProfileId :: Lens' DirectorySitesGet' Int64
dsgProfileId
  = lens _dsgProfileId (\ s a -> s{_dsgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsgKey :: Lens' DirectorySitesGet' (Maybe Text)
dsgKey = lens _dsgKey (\ s a -> s{_dsgKey = a})

-- | Directory site ID.
dsgId :: Lens' DirectorySitesGet' Int64
dsgId = lens _dsgId (\ s a -> s{_dsgId = a})

-- | OAuth 2.0 token for the current user.
dsgOauthToken :: Lens' DirectorySitesGet' (Maybe Text)
dsgOauthToken
  = lens _dsgOauthToken
      (\ s a -> s{_dsgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsgFields :: Lens' DirectorySitesGet' (Maybe Text)
dsgFields
  = lens _dsgFields (\ s a -> s{_dsgFields = a})

-- | Data format for the response.
dsgAlt :: Lens' DirectorySitesGet' Alt
dsgAlt = lens _dsgAlt (\ s a -> s{_dsgAlt = a})

instance GoogleRequest DirectorySitesGet' where
        type Rs DirectorySitesGet' = DirectorySite
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DirectorySitesGet'{..}
          = go _dsgQuotaUser (Just _dsgPrettyPrint) _dsgUserIp
              _dsgProfileId
              _dsgKey
              _dsgId
              _dsgOauthToken
              _dsgFields
              (Just _dsgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DirectorySitesGetResource)
                      r
                      u
