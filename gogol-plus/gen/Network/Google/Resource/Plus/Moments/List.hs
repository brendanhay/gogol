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
-- Module      : Network.Google.Resource.Plus.Moments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the moments for a particular user.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @PlusMomentsList@.
module Network.Google.Resource.Plus.Moments.List
    (
    -- * REST Resource
      MomentsListResource

    -- * Creating a Request
    , momentsList'
    , MomentsList'

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlTargetUrl
    , mlUserIp
    , mlCollection
    , mlUserId
    , mlKey
    , mlPageToken
    , mlType
    , mlOauthToken
    , mlMaxResults
    , mlFields
    , mlAlt
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusMomentsList@ which the
-- 'MomentsList'' request conforms to.
type MomentsListResource =
     "people" :>
       Capture "userId" Text :>
         "moments" :>
           Capture "collection" PlusMomentsListCollection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "targetUrl" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "type" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Get '[JSON] MomentsFeed

-- | List all of the moments for a particular user.
--
-- /See:/ 'momentsList'' smart constructor.
data MomentsList' = MomentsList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlTargetUrl   :: !(Maybe Text)
    , _mlUserIp      :: !(Maybe Text)
    , _mlCollection  :: !PlusMomentsListCollection
    , _mlUserId      :: !Text
    , _mlKey         :: !(Maybe Text)
    , _mlPageToken   :: !(Maybe Text)
    , _mlType        :: !(Maybe Text)
    , _mlOauthToken  :: !(Maybe Text)
    , _mlMaxResults  :: !Word32
    , _mlFields      :: !(Maybe Text)
    , _mlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlTargetUrl'
--
-- * 'mlUserIp'
--
-- * 'mlCollection'
--
-- * 'mlUserId'
--
-- * 'mlKey'
--
-- * 'mlPageToken'
--
-- * 'mlType'
--
-- * 'mlOauthToken'
--
-- * 'mlMaxResults'
--
-- * 'mlFields'
--
-- * 'mlAlt'
momentsList'
    :: PlusMomentsListCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> MomentsList'
momentsList' pMlCollection_ pMlUserId_ =
    MomentsList'
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlTargetUrl = Nothing
    , _mlUserIp = Nothing
    , _mlCollection = pMlCollection_
    , _mlUserId = pMlUserId_
    , _mlKey = Nothing
    , _mlPageToken = Nothing
    , _mlType = Nothing
    , _mlOauthToken = Nothing
    , _mlMaxResults = 20
    , _mlFields = Nothing
    , _mlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' MomentsList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' MomentsList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | Only moments containing this targetUrl will be returned.
mlTargetUrl :: Lens' MomentsList' (Maybe Text)
mlTargetUrl
  = lens _mlTargetUrl (\ s a -> s{_mlTargetUrl = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIp :: Lens' MomentsList' (Maybe Text)
mlUserIp = lens _mlUserIp (\ s a -> s{_mlUserIp = a})

-- | The collection of moments to list.
mlCollection :: Lens' MomentsList' PlusMomentsListCollection
mlCollection
  = lens _mlCollection (\ s a -> s{_mlCollection = a})

-- | The ID of the user to get moments for. The special value \"me\" can be
-- used to indicate the authenticated user.
mlUserId :: Lens' MomentsList' Text
mlUserId = lens _mlUserId (\ s a -> s{_mlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MomentsList' (Maybe Text)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
mlPageToken :: Lens' MomentsList' (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | Only moments of this type will be returned.
mlType :: Lens' MomentsList' (Maybe Text)
mlType = lens _mlType (\ s a -> s{_mlType = a})

-- | OAuth 2.0 token for the current user.
mlOauthToken :: Lens' MomentsList' (Maybe Text)
mlOauthToken
  = lens _mlOauthToken (\ s a -> s{_mlOauthToken = a})

-- | The maximum number of moments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
mlMaxResults :: Lens' MomentsList' Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MomentsList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

-- | Data format for the response.
mlAlt :: Lens' MomentsList' Alt
mlAlt = lens _mlAlt (\ s a -> s{_mlAlt = a})

instance GoogleRequest MomentsList' where
        type Rs MomentsList' = MomentsFeed
        request = requestWithRoute defReq plusURL
        requestWithRoute r u MomentsList'{..}
          = go _mlQuotaUser (Just _mlPrettyPrint) _mlTargetUrl
              _mlUserIp
              _mlCollection
              _mlUserId
              _mlKey
              _mlPageToken
              _mlType
              _mlOauthToken
              (Just _mlMaxResults)
              _mlFields
              (Just _mlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MomentsListResource)
                      r
                      u
