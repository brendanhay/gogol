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
    , mlTargetURL
    , mlUserIP
    , mlCollection
    , mlUserId
    , mlKey
    , mlPageToken
    , mlType
    , mlOAuthToken
    , mlMaxResults
    , mlFields
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusMomentsList@ which the
-- 'MomentsList'' request conforms to.
type MomentsListResource =
     "people" :>
       Capture "userId" Text :>
         "moments" :>
           Capture "collection" MomentsListCollection :>
             QueryParam "targetUrl" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "type" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] MomentsFeed

-- | List all of the moments for a particular user.
--
-- /See:/ 'momentsList'' smart constructor.
data MomentsList' = MomentsList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlTargetURL   :: !(Maybe Text)
    , _mlUserIP      :: !(Maybe Text)
    , _mlCollection  :: !MomentsListCollection
    , _mlUserId      :: !Text
    , _mlKey         :: !(Maybe Key)
    , _mlPageToken   :: !(Maybe Text)
    , _mlType        :: !(Maybe Text)
    , _mlOAuthToken  :: !(Maybe OAuthToken)
    , _mlMaxResults  :: !Word32
    , _mlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlTargetURL'
--
-- * 'mlUserIP'
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
-- * 'mlOAuthToken'
--
-- * 'mlMaxResults'
--
-- * 'mlFields'
momentsList'
    :: MomentsListCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> MomentsList'
momentsList' pMlCollection_ pMlUserId_ =
    MomentsList'
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlTargetURL = Nothing
    , _mlUserIP = Nothing
    , _mlCollection = pMlCollection_
    , _mlUserId = pMlUserId_
    , _mlKey = Nothing
    , _mlPageToken = Nothing
    , _mlType = Nothing
    , _mlOAuthToken = Nothing
    , _mlMaxResults = 20
    , _mlFields = Nothing
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
mlTargetURL :: Lens' MomentsList' (Maybe Text)
mlTargetURL
  = lens _mlTargetURL (\ s a -> s{_mlTargetURL = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIP :: Lens' MomentsList' (Maybe Text)
mlUserIP = lens _mlUserIP (\ s a -> s{_mlUserIP = a})

-- | The collection of moments to list.
mlCollection :: Lens' MomentsList' MomentsListCollection
mlCollection
  = lens _mlCollection (\ s a -> s{_mlCollection = a})

-- | The ID of the user to get moments for. The special value \"me\" can be
-- used to indicate the authenticated user.
mlUserId :: Lens' MomentsList' Text
mlUserId = lens _mlUserId (\ s a -> s{_mlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MomentsList' (Maybe Key)
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
mlOAuthToken :: Lens' MomentsList' (Maybe OAuthToken)
mlOAuthToken
  = lens _mlOAuthToken (\ s a -> s{_mlOAuthToken = a})

-- | The maximum number of moments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
mlMaxResults :: Lens' MomentsList' Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MomentsList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

instance GoogleAuth MomentsList' where
        authKey = mlKey . _Just
        authToken = mlOAuthToken . _Just

instance GoogleRequest MomentsList' where
        type Rs MomentsList' = MomentsFeed
        request = requestWithRoute defReq plusURL
        requestWithRoute r u MomentsList'{..}
          = go _mlUserId _mlCollection _mlTargetURL
              _mlPageToken
              _mlType
              (Just _mlMaxResults)
              _mlQuotaUser
              (Just _mlPrettyPrint)
              _mlUserIP
              _mlFields
              _mlKey
              _mlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MomentsListResource)
                      r
                      u
