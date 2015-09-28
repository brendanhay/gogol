{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Captions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a specified caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.captions.delete@.
module Network.Google.API.YouTube.Captions.Delete
    (
    -- * REST Resource
      CaptionsDeleteAPI

    -- * Creating a Request
    , captionsDelete'
    , CaptionsDelete'

    -- * Request Lenses
    , cdOnBehalfOf
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdOnBehalfOfContentOwner
    , cdKey
    , cdId
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.captions.delete which the
-- 'CaptionsDelete'' request conforms to.
type CaptionsDeleteAPI =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a specified caption track.
--
-- /See:/ 'captionsDelete'' smart constructor.
data CaptionsDelete' = CaptionsDelete'
    { _cdOnBehalfOf             :: !(Maybe Text)
    , _cdQuotaUser              :: !(Maybe Text)
    , _cdPrettyPrint            :: !Bool
    , _cdUserIp                 :: !(Maybe Text)
    , _cdOnBehalfOfContentOwner :: !(Maybe Text)
    , _cdKey                    :: !(Maybe Text)
    , _cdId                     :: !Text
    , _cdOauthToken             :: !(Maybe Text)
    , _cdFields                 :: !(Maybe Text)
    , _cdAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdOnBehalfOf'
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdOnBehalfOfContentOwner'
--
-- * 'cdKey'
--
-- * 'cdId'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
captionsDelete'
    :: Text -- ^ 'id'
    -> CaptionsDelete'
captionsDelete' pCdId_ =
    CaptionsDelete'
    { _cdOnBehalfOf = Nothing
    , _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdOnBehalfOfContentOwner = Nothing
    , _cdKey = Nothing
    , _cdId = pCdId_
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = JSON
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
cdOnBehalfOf :: Lens' CaptionsDelete' (Maybe Text)
cdOnBehalfOf
  = lens _cdOnBehalfOf (\ s a -> s{_cdOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CaptionsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CaptionsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CaptionsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
cdOnBehalfOfContentOwner :: Lens' CaptionsDelete' (Maybe Text)
cdOnBehalfOfContentOwner
  = lens _cdOnBehalfOfContentOwner
      (\ s a -> s{_cdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CaptionsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The id parameter identifies the caption track that is being deleted. The
-- value is a caption track ID as identified by the id property in a
-- caption resource.
cdId :: Lens' CaptionsDelete' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CaptionsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CaptionsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CaptionsDelete' Alt
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CaptionsDelete' where
        type Rs CaptionsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsDelete'{..}
          = go _cdOnBehalfOf _cdQuotaUser (Just _cdPrettyPrint)
              _cdUserIp
              _cdOnBehalfOfContentOwner
              _cdKey
              (Just _cdId)
              _cdOauthToken
              _cdFields
              (Just _cdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CaptionsDeleteAPI)
                      r
                      u
