{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Plus.Moments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.moments.insert@.
module Network.Google.API.Plus.Moments.Insert
    (
    -- * REST Resource
      MomentsInsertAPI

    -- * Creating a Request
    , momentsInsert'
    , MomentsInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIp
    , miCollection
    , miDebug
    , miUserId
    , miKey
    , miOauthToken
    , miFields
    , miAlt
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for plus.moments.insert which the
-- 'MomentsInsert'' request conforms to.
type MomentsInsertAPI =
     "people" :>
       Capture "userId" Text :>
         "moments" :>
           Capture "collection" MomentsInsert'Collection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "debug" Bool :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Moment

-- | Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ 'momentsInsert'' smart constructor.
data MomentsInsert' = MomentsInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIp      :: !(Maybe Text)
    , _miCollection  :: !MomentsInsert'Collection
    , _miDebug       :: !(Maybe Bool)
    , _miUserId      :: !Text
    , _miKey         :: !(Maybe Text)
    , _miOauthToken  :: !(Maybe Text)
    , _miFields      :: !(Maybe Text)
    , _miAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIp'
--
-- * 'miCollection'
--
-- * 'miDebug'
--
-- * 'miUserId'
--
-- * 'miKey'
--
-- * 'miOauthToken'
--
-- * 'miFields'
--
-- * 'miAlt'
momentsInsert'
    :: MomentsInsert'Collection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> MomentsInsert'
momentsInsert' pMiCollection_ pMiUserId_ =
    MomentsInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIp = Nothing
    , _miCollection = pMiCollection_
    , _miDebug = Nothing
    , _miUserId = pMiUserId_
    , _miKey = Nothing
    , _miOauthToken = Nothing
    , _miFields = Nothing
    , _miAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MomentsInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MomentsInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIp :: Lens' MomentsInsert' (Maybe Text)
miUserIp = lens _miUserIp (\ s a -> s{_miUserIp = a})

-- | The collection to which to write moments.
miCollection :: Lens' MomentsInsert' MomentsInsert'Collection
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | Return the moment as written. Should be used only for debugging.
miDebug :: Lens' MomentsInsert' (Maybe Bool)
miDebug = lens _miDebug (\ s a -> s{_miDebug = a})

-- | The ID of the user to record actions for. The only valid values are
-- \"me\" and the ID of the authenticated user.
miUserId :: Lens' MomentsInsert' Text
miUserId = lens _miUserId (\ s a -> s{_miUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MomentsInsert' (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOauthToken :: Lens' MomentsInsert' (Maybe Text)
miOauthToken
  = lens _miOauthToken (\ s a -> s{_miOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MomentsInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

-- | Data format for the response.
miAlt :: Lens' MomentsInsert' Alt
miAlt = lens _miAlt (\ s a -> s{_miAlt = a})

instance GoogleRequest MomentsInsert' where
        type Rs MomentsInsert' = Moment
        request = requestWithRoute defReq plusURL
        requestWithRoute r u MomentsInsert'{..}
          = go _miQuotaUser (Just _miPrettyPrint) _miUserIp
              _miCollection
              _miDebug
              _miUserId
              _miKey
              _miOauthToken
              _miFields
              (Just _miAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MomentsInsertAPI) r
                      u
