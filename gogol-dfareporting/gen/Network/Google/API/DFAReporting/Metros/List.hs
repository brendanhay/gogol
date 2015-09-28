{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Metros.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of metros.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.metros.list@.
module Network.Google.API.DFAReporting.Metros.List
    (
    -- * REST Resource
      MetrosListAPI

    -- * Creating a Request
    , metrosList'
    , MetrosList'

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlUserIp
    , mlProfileId
    , mlKey
    , mlOauthToken
    , mlFields
    , mlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.metros.list which the
-- 'MetrosList'' request conforms to.
type MetrosListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "metros" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] MetrosListResponse

-- | Retrieves a list of metros.
--
-- /See:/ 'metrosList'' smart constructor.
data MetrosList' = MetrosList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlUserIp      :: !(Maybe Text)
    , _mlProfileId   :: !Int64
    , _mlKey         :: !(Maybe Text)
    , _mlOauthToken  :: !(Maybe Text)
    , _mlFields      :: !(Maybe Text)
    , _mlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetrosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlUserIp'
--
-- * 'mlProfileId'
--
-- * 'mlKey'
--
-- * 'mlOauthToken'
--
-- * 'mlFields'
--
-- * 'mlAlt'
metrosList'
    :: Int64 -- ^ 'profileId'
    -> MetrosList'
metrosList' pMlProfileId_ =
    MetrosList'
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlUserIp = Nothing
    , _mlProfileId = pMlProfileId_
    , _mlKey = Nothing
    , _mlOauthToken = Nothing
    , _mlFields = Nothing
    , _mlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' MetrosList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' MetrosList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIp :: Lens' MetrosList' (Maybe Text)
mlUserIp = lens _mlUserIp (\ s a -> s{_mlUserIp = a})

-- | User profile ID associated with this request.
mlProfileId :: Lens' MetrosList' Int64
mlProfileId
  = lens _mlProfileId (\ s a -> s{_mlProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MetrosList' (Maybe Text)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | OAuth 2.0 token for the current user.
mlOauthToken :: Lens' MetrosList' (Maybe Text)
mlOauthToken
  = lens _mlOauthToken (\ s a -> s{_mlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MetrosList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

-- | Data format for the response.
mlAlt :: Lens' MetrosList' Alt
mlAlt = lens _mlAlt (\ s a -> s{_mlAlt = a})

instance GoogleRequest MetrosList' where
        type Rs MetrosList' = MetrosListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u MetrosList'{..}
          = go _mlQuotaUser (Just _mlPrettyPrint) _mlUserIp
              _mlProfileId
              _mlKey
              _mlOauthToken
              _mlFields
              (Just _mlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MetrosListAPI) r u
