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
    , miUserIP
    , miCollection
    , miPayload
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
           Capture "collection" MomentsInsertCollection :>
             QueryParam "debug" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Moment :> Post '[JSON] Moment

-- | Record a moment representing a user\'s action such as making a purchase
-- or commenting on a blog.
--
-- /See:/ 'momentsInsert'' smart constructor.
data MomentsInsert' = MomentsInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIP      :: !(Maybe Text)
    , _miCollection  :: !MomentsInsertCollection
    , _miPayload     :: !Moment
    , _miDebug       :: !(Maybe Bool)
    , _miUserId      :: !Text
    , _miKey         :: !(Maybe AuthKey)
    , _miOAuthToken  :: !(Maybe OAuthToken)
    , _miFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIP'
--
-- * 'miCollection'
--
-- * 'miPayload'
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
    :: MomentsInsertCollection -- ^ 'collection'
    -> Moment -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> MomentsInsert'
momentsInsert' pMiCollection_ pMiPayload_ pMiUserId_ =
    MomentsInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIP = Nothing
    , _miCollection = pMiCollection_
    , _miPayload = pMiPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIP :: Lens' MomentsInsert' (Maybe Text)
miUserIP = lens _miUserIP (\ s a -> s{_miUserIP = a})

-- | The collection to which to write moments.
miCollection :: Lens' MomentsInsert' MomentsInsertCollection
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | Multipart request metadata.
miPayload :: Lens' MomentsInsert' Moment
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

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
miKey :: Lens' MomentsInsert' (Maybe AuthKey)
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
        request = requestWith plusRequest
        requestWith rq MomentsInsert'{..}
          = go _miUserId _miCollection _miDebug _miQuotaUser
              (Just _miPrettyPrint)
              _miUserIP
              _miFields
              _miKey
              _miOAuthToken
              (Just AltJSON)
              _miPayload
          where go
                  = clientBuild (Proxy :: Proxy MomentsInsertResource)
                      rq
