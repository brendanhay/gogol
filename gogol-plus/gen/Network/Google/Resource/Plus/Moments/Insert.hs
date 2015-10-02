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
-- Module      : Network.Google.Resource.Plus.Moments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @PlusMomentsInsert@.
module Network.Google.Resource.Plus.Moments.Insert
    (
    -- * REST Resource
      MomentsInsertResource

    -- * Creating a Request
    , momentsInsert'
    , MomentsInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miMoment
    , miUserIP
    , miCollection
    , miDebug
    , miUserId
    , miKey
    , miOAuthToken
    , miFields
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusMomentsInsert@ which the
-- 'MomentsInsert'' request conforms to.
type MomentsInsertResource =
     "people" :>
       Capture "userId" Text :>
         "moments" :>
           Capture "collection" PlusMomentsInsertCollection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "debug" Bool :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Moment :> Post '[JSON] Moment

-- | Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ 'momentsInsert'' smart constructor.
data MomentsInsert' = MomentsInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miMoment      :: !Moment
    , _miUserIP      :: !(Maybe Text)
    , _miCollection  :: !PlusMomentsInsertCollection
    , _miDebug       :: !(Maybe Bool)
    , _miUserId      :: !Text
    , _miKey         :: !(Maybe Key)
    , _miOAuthToken  :: !(Maybe OAuthToken)
    , _miFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miMoment'
--
-- * 'miUserIP'
--
-- * 'miCollection'
--
-- * 'miDebug'
--
-- * 'miUserId'
--
-- * 'miKey'
--
-- * 'miOAuthToken'
--
-- * 'miFields'
momentsInsert'
    :: Moment -- ^ 'Moment'
    -> PlusMomentsInsertCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> MomentsInsert'
momentsInsert' pMiMoment_ pMiCollection_ pMiUserId_ =
    MomentsInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miMoment = pMiMoment_
    , _miUserIP = Nothing
    , _miCollection = pMiCollection_
    , _miDebug = Nothing
    , _miUserId = pMiUserId_
    , _miKey = Nothing
    , _miOAuthToken = Nothing
    , _miFields = Nothing
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

-- | Multipart request metadata.
miMoment :: Lens' MomentsInsert' Moment
miMoment = lens _miMoment (\ s a -> s{_miMoment = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIP :: Lens' MomentsInsert' (Maybe Text)
miUserIP = lens _miUserIP (\ s a -> s{_miUserIP = a})

-- | The collection to which to write moments.
miCollection :: Lens' MomentsInsert' PlusMomentsInsertCollection
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
miKey :: Lens' MomentsInsert' (Maybe Key)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOAuthToken :: Lens' MomentsInsert' (Maybe OAuthToken)
miOAuthToken
  = lens _miOAuthToken (\ s a -> s{_miOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MomentsInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

instance GoogleAuth MomentsInsert' where
        authKey = miKey . _Just
        authToken = miOAuthToken . _Just

instance GoogleRequest MomentsInsert' where
        type Rs MomentsInsert' = Moment
        request = requestWithRoute defReq plusURL
        requestWithRoute r u MomentsInsert'{..}
          = go _miQuotaUser (Just _miPrettyPrint) _miUserIP
              _miCollection
              _miDebug
              _miUserId
              _miKey
              _miOAuthToken
              _miFields
              (Just AltJSON)
              _miMoment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MomentsInsertResource)
                      r
                      u
