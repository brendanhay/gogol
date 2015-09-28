{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.DirectorySites.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new directory site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.directorySites.insert@.
module Network.Google.API.DFAReporting.DirectorySites.Insert
    (
    -- * REST Resource
      DirectorySitesInsertAPI

    -- * Creating a Request
    , directorySitesInsert'
    , DirectorySitesInsert'

    -- * Request Lenses
    , dsiQuotaUser
    , dsiPrettyPrint
    , dsiUserIp
    , dsiProfileId
    , dsiKey
    , dsiOauthToken
    , dsiFields
    , dsiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.directorySites.insert which the
-- 'DirectorySitesInsert'' request conforms to.
type DirectorySitesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] DirectorySite

-- | Inserts a new directory site.
--
-- /See:/ 'directorySitesInsert'' smart constructor.
data DirectorySitesInsert' = DirectorySitesInsert'
    { _dsiQuotaUser   :: !(Maybe Text)
    , _dsiPrettyPrint :: !Bool
    , _dsiUserIp      :: !(Maybe Text)
    , _dsiProfileId   :: !Int64
    , _dsiKey         :: !(Maybe Text)
    , _dsiOauthToken  :: !(Maybe Text)
    , _dsiFields      :: !(Maybe Text)
    , _dsiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiQuotaUser'
--
-- * 'dsiPrettyPrint'
--
-- * 'dsiUserIp'
--
-- * 'dsiProfileId'
--
-- * 'dsiKey'
--
-- * 'dsiOauthToken'
--
-- * 'dsiFields'
--
-- * 'dsiAlt'
directorySitesInsert'
    :: Int64 -- ^ 'profileId'
    -> DirectorySitesInsert'
directorySitesInsert' pDsiProfileId_ =
    DirectorySitesInsert'
    { _dsiQuotaUser = Nothing
    , _dsiPrettyPrint = True
    , _dsiUserIp = Nothing
    , _dsiProfileId = pDsiProfileId_
    , _dsiKey = Nothing
    , _dsiOauthToken = Nothing
    , _dsiFields = Nothing
    , _dsiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsiQuotaUser :: Lens' DirectorySitesInsert' (Maybe Text)
dsiQuotaUser
  = lens _dsiQuotaUser (\ s a -> s{_dsiQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsiPrettyPrint :: Lens' DirectorySitesInsert' Bool
dsiPrettyPrint
  = lens _dsiPrettyPrint
      (\ s a -> s{_dsiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsiUserIp :: Lens' DirectorySitesInsert' (Maybe Text)
dsiUserIp
  = lens _dsiUserIp (\ s a -> s{_dsiUserIp = a})

-- | User profile ID associated with this request.
dsiProfileId :: Lens' DirectorySitesInsert' Int64
dsiProfileId
  = lens _dsiProfileId (\ s a -> s{_dsiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsiKey :: Lens' DirectorySitesInsert' (Maybe Text)
dsiKey = lens _dsiKey (\ s a -> s{_dsiKey = a})

-- | OAuth 2.0 token for the current user.
dsiOauthToken :: Lens' DirectorySitesInsert' (Maybe Text)
dsiOauthToken
  = lens _dsiOauthToken
      (\ s a -> s{_dsiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsiFields :: Lens' DirectorySitesInsert' (Maybe Text)
dsiFields
  = lens _dsiFields (\ s a -> s{_dsiFields = a})

-- | Data format for the response.
dsiAlt :: Lens' DirectorySitesInsert' Alt
dsiAlt = lens _dsiAlt (\ s a -> s{_dsiAlt = a})

instance GoogleRequest DirectorySitesInsert' where
        type Rs DirectorySitesInsert' = DirectorySite
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u DirectorySitesInsert'{..}
          = go _dsiQuotaUser (Just _dsiPrettyPrint) _dsiUserIp
              _dsiProfileId
              _dsiKey
              _dsiOauthToken
              _dsiFields
              (Just _dsiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DirectorySitesInsertAPI)
                      r
                      u
