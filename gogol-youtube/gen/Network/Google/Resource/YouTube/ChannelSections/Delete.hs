{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a channelSection.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelSectionsDelete@.
module YouTube.ChannelSections.Delete
    (
    -- * REST Resource
      ChannelSectionsDeleteAPI

    -- * Creating a Request
    , channelSectionsDelete
    , ChannelSectionsDelete

    -- * Request Lenses
    , csdQuotaUser
    , csdPrettyPrint
    , csdUserIp
    , csdOnBehalfOfContentOwner
    , csdKey
    , csdId
    , csdOauthToken
    , csdFields
    , csdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelSectionsDelete@ which the
-- 'ChannelSectionsDelete' request conforms to.
type ChannelSectionsDeleteAPI =
     "channelSections" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "id" Text :> Delete '[JSON] ()

-- | Deletes a channelSection.
--
-- /See:/ 'channelSectionsDelete' smart constructor.
data ChannelSectionsDelete = ChannelSectionsDelete
    { _csdQuotaUser              :: !(Maybe Text)
    , _csdPrettyPrint            :: !Bool
    , _csdUserIp                 :: !(Maybe Text)
    , _csdOnBehalfOfContentOwner :: !(Maybe Text)
    , _csdKey                    :: !(Maybe Text)
    , _csdId                     :: !Text
    , _csdOauthToken             :: !(Maybe Text)
    , _csdFields                 :: !(Maybe Text)
    , _csdAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdQuotaUser'
--
-- * 'csdPrettyPrint'
--
-- * 'csdUserIp'
--
-- * 'csdOnBehalfOfContentOwner'
--
-- * 'csdKey'
--
-- * 'csdId'
--
-- * 'csdOauthToken'
--
-- * 'csdFields'
--
-- * 'csdAlt'
channelSectionsDelete
    :: Text -- ^ 'id'
    -> ChannelSectionsDelete
channelSectionsDelete pCsdId_ =
    ChannelSectionsDelete
    { _csdQuotaUser = Nothing
    , _csdPrettyPrint = True
    , _csdUserIp = Nothing
    , _csdOnBehalfOfContentOwner = Nothing
    , _csdKey = Nothing
    , _csdId = pCsdId_
    , _csdOauthToken = Nothing
    , _csdFields = Nothing
    , _csdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csdQuotaUser :: Lens' ChannelSectionsDelete' (Maybe Text)
csdQuotaUser
  = lens _csdQuotaUser (\ s a -> s{_csdQuotaUser = a})

-- | Returns response with indentations and line breaks.
csdPrettyPrint :: Lens' ChannelSectionsDelete' Bool
csdPrettyPrint
  = lens _csdPrettyPrint
      (\ s a -> s{_csdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csdUserIp :: Lens' ChannelSectionsDelete' (Maybe Text)
csdUserIp
  = lens _csdUserIp (\ s a -> s{_csdUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
csdOnBehalfOfContentOwner :: Lens' ChannelSectionsDelete' (Maybe Text)
csdOnBehalfOfContentOwner
  = lens _csdOnBehalfOfContentOwner
      (\ s a -> s{_csdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csdKey :: Lens' ChannelSectionsDelete' (Maybe Text)
csdKey = lens _csdKey (\ s a -> s{_csdKey = a})

-- | The id parameter specifies the YouTube channelSection ID for the
-- resource that is being deleted. In a channelSection resource, the id
-- property specifies the YouTube channelSection ID.
csdId :: Lens' ChannelSectionsDelete' Text
csdId = lens _csdId (\ s a -> s{_csdId = a})

-- | OAuth 2.0 token for the current user.
csdOauthToken :: Lens' ChannelSectionsDelete' (Maybe Text)
csdOauthToken
  = lens _csdOauthToken
      (\ s a -> s{_csdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
csdFields :: Lens' ChannelSectionsDelete' (Maybe Text)
csdFields
  = lens _csdFields (\ s a -> s{_csdFields = a})

-- | Data format for the response.
csdAlt :: Lens' ChannelSectionsDelete' Text
csdAlt = lens _csdAlt (\ s a -> s{_csdAlt = a})

instance GoogleRequest ChannelSectionsDelete' where
        type Rs ChannelSectionsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelSectionsDelete{..}
          = go _csdQuotaUser _csdPrettyPrint _csdUserIp
              _csdOnBehalfOfContentOwner
              _csdKey
              (Just _csdId)
              _csdOauthToken
              _csdFields
              _csdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelSectionsDeleteAPI)
                      r
                      u
