{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module PlusDomains.Media.Insert
    (
    -- * REST Resource
      MediaInsertAPI

    -- * Creating a Request
    , mediaInsert
    , MediaInsert

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIp
    , miCollection
    , miUserId
    , miKey
    , miOauthToken
    , miFields
    , miAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsMediaInsert@ which the
-- 'MediaInsert' request conforms to.
type MediaInsertAPI =
     "people" :>
       Capture "userId" Text :>
         "media" :>
           Capture "collection" Text :> Post '[JSON] Media

-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
--
-- /See:/ 'mediaInsert' smart constructor.
data MediaInsert = MediaInsert
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIp      :: !(Maybe Text)
    , _miCollection  :: !Text
    , _miUserId      :: !Text
    , _miKey         :: !(Maybe Text)
    , _miOauthToken  :: !(Maybe Text)
    , _miFields      :: !(Maybe Text)
    , _miAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaInsert'' with the minimum fields required to make a request.
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
-- * 'miUserId'
--
-- * 'miKey'
--
-- * 'miOauthToken'
--
-- * 'miFields'
--
-- * 'miAlt'
mediaInsert
    :: Text -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> MediaInsert
mediaInsert pMiCollection_ pMiUserId_ =
    MediaInsert
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIp = Nothing
    , _miCollection = pMiCollection_
    , _miUserId = pMiUserId_
    , _miKey = Nothing
    , _miOauthToken = Nothing
    , _miFields = Nothing
    , _miAlt = "json"
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
miUserIp :: Lens' MediaInsert' (Maybe Text)
miUserIp = lens _miUserIp (\ s a -> s{_miUserIp = a})

miCollection :: Lens' MediaInsert' Text
miCollection
  = lens _miCollection (\ s a -> s{_miCollection = a})

-- | The ID of the user to create the activity on behalf of.
miUserId :: Lens' MediaInsert' Text
miUserId = lens _miUserId (\ s a -> s{_miUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MediaInsert' (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOauthToken :: Lens' MediaInsert' (Maybe Text)
miOauthToken
  = lens _miOauthToken (\ s a -> s{_miOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MediaInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

-- | Data format for the response.
miAlt :: Lens' MediaInsert' Text
miAlt = lens _miAlt (\ s a -> s{_miAlt = a})

instance GoogleRequest MediaInsert' where
        type Rs MediaInsert' = Media
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u MediaInsert{..}
          = go _miQuotaUser _miPrettyPrint _miUserIp
              _miCollection
              _miUserId
              _miKey
              _miOauthToken
              _miFields
              _miAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MediaInsertAPI) r u
