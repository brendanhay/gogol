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
-- Module      : Network.Google.Resource.PlusDomains.Media.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsMediaInsert@.
module Network.Google.Resource.PlusDomains.Media.Insert
    (
    -- * REST Resource
      MediaInsertResource

    -- * Creating a Request
    , mediaInsert'
    , MediaInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIP
    , miCollection
    , miUserId
    , miMedia
    , miMedia
    , miKey
    , miOAuthToken
    , miFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsMediaInsert@ which the
-- 'MediaInsert'' request conforms to.
type MediaInsertResource =
     "people" :>
       Capture "userId" Text :>
         "media" :>
           Capture "collection" PlusDomainsMediaInsertCollection
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           MultipartRelated '[JSON] Media Body :>
                             Post '[JSON] Media

-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ 'mediaInsert'' smart constructor.
data MediaInsert' = MediaInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIP      :: !(Maybe Text)
    , _miCollection  :: !PlusDomainsMediaInsertCollection
    , _miUserId      :: !Text
    , _miMedia       :: !Body
    , _miMedia       :: !Media
    , _miKey         :: !(Maybe Key)
    , _miOAuthToken  :: !(Maybe OAuthToken)
    , _miFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaInsert'' with the minimum fields required to make a request.
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
-- * 'miUserId'
--
-- * 'miMedia'
--
-- * 'miMedia'
--
-- * 'miKey'
--
-- * 'miOAuthToken'
--
-- * 'miFields'
mediaInsert'
    :: PlusDomainsMediaInsertCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> Body -- ^ 'media'
    -> Media -- ^ 'Media'
    -> MediaInsert'
mediaInsert' pMiCollection_ pMiUserId_ pMiMedia_ pMiMedia_ =
    MediaInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIP = Nothing
    , _miCollection = pMiCollection_
    , _miUserId = pMiUserId_
    , _miMedia = pMiMedia_
    , _miMedia = pMiMedia_
    , _miKey = Nothing
    , _miOAuthToken = Nothing
    , _miFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MediaInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MediaInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIP :: Lens' MediaInsert' (Maybe Text)
miUserIP = lens _miUserIP (\ s a -> s{_miUserIP = a})

miCollection :: Lens' MediaInsert' PlusDomainsMediaInsertCollection
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | The ID of the user to create the activity on behalf of.
miUserId :: Lens' MediaInsert' Text
miUserId = lens _miUserId (\ s a -> s{_miUserId = a})

miMedia :: Lens' MediaInsert' Body
miMedia = lens _miMedia (\ s a -> s{_miMedia = a})

-- | Multipart request metadata.
miMedia :: Lens' MediaInsert' Media
miMedia = lens _miMedia (\ s a -> s{_miMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MediaInsert' (Maybe Key)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOAuthToken :: Lens' MediaInsert' (Maybe OAuthToken)
miOAuthToken
  = lens _miOAuthToken (\ s a -> s{_miOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MediaInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

instance GoogleAuth MediaInsert' where
        authKey = miKey . _Just
        authToken = miOAuthToken . _Just

instance GoogleRequest MediaInsert' where
        type Rs MediaInsert' = Media
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u MediaInsert'{..}
          = go _miQuotaUser (Just _miPrettyPrint) _miUserIP
              _miCollection
              _miUserId
              _miMedia
              _miKey
              _miOAuthToken
              _miFields
              (Just AltJSON)
              _miMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MediaInsertResource)
                      r
                      u
