{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.Audiences.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the audiences to which a user can share.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsAudiencesList@.
module PlusDomains.Audiences.List
    (
    -- * REST Resource
      AudiencesListAPI

    -- * Creating a Request
    , audiencesList
    , AudiencesList

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aUserId
    , aKey
    , aPageToken
    , aOauthToken
    , aMaxResults
    , aFields
    , aAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsAudiencesList@ which the
-- 'AudiencesList' request conforms to.
type AudiencesListAPI =
     "people" :>
       Capture "userId" Text :>
         "audiences" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] AudiencesFeed

-- | List all of the audiences to which a user can share.
--
-- /See:/ 'audiencesList' smart constructor.
data AudiencesList = AudiencesList
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aUserId      :: !Text
    , _aKey         :: !(Maybe Text)
    , _aPageToken   :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aMaxResults  :: !Word32
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudiencesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aUserId'
--
-- * 'aKey'
--
-- * 'aPageToken'
--
-- * 'aOauthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
--
-- * 'aAlt'
audiencesList
    :: Text -- ^ 'userId'
    -> AudiencesList
audiencesList pAUserId_ =
    AudiencesList
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aUserId = pAUserId_
    , _aKey = Nothing
    , _aPageToken = Nothing
    , _aOauthToken = Nothing
    , _aMaxResults = 20
    , _aFields = Nothing
    , _aAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AudiencesList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AudiencesList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AudiencesList' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | The ID of the user to get audiences for. The special value \"me\" can be
-- used to indicate the authenticated user.
aUserId :: Lens' AudiencesList' Text
aUserId = lens _aUserId (\ s a -> s{_aUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AudiencesList' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
aPageToken :: Lens' AudiencesList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AudiencesList' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
aMaxResults :: Lens' AudiencesList' Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AudiencesList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AudiencesList' Text
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AudiencesList' where
        type Rs AudiencesList' = AudiencesFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u AudiencesList{..}
          = go _aQuotaUser _aPrettyPrint _aUserIp _aUserId
              _aKey
              _aPageToken
              _aOauthToken
              (Just _aMaxResults)
              _aFields
              _aAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AudiencesListAPI) r
                      u
