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
-- Module      : Network.Google.Resource.YouTube.Captions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a specified caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsDelete@.
module Network.Google.Resource.YouTube.Captions.Delete
    (
    -- * REST Resource
      CaptionsDeleteResource

    -- * Creating a Request
    , captionsDelete'
    , CaptionsDelete'

    -- * Request Lenses
    , cddOnBehalfOf
    , cddQuotaUser
    , cddPrettyPrint
    , cddUserIp
    , cddOnBehalfOfContentOwner
    , cddKey
    , cddId
    , cddOauthToken
    , cddFields
    , cddAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsDelete@ which the
-- 'CaptionsDelete'' request conforms to.
type CaptionsDeleteResource =
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
    { _cddOnBehalfOf             :: !(Maybe Text)
    , _cddQuotaUser              :: !(Maybe Text)
    , _cddPrettyPrint            :: !Bool
    , _cddUserIp                 :: !(Maybe Text)
    , _cddOnBehalfOfContentOwner :: !(Maybe Text)
    , _cddKey                    :: !(Maybe Text)
    , _cddId                     :: !Text
    , _cddOauthToken             :: !(Maybe Text)
    , _cddFields                 :: !(Maybe Text)
    , _cddAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddOnBehalfOf'
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddUserIp'
--
-- * 'cddOnBehalfOfContentOwner'
--
-- * 'cddKey'
--
-- * 'cddId'
--
-- * 'cddOauthToken'
--
-- * 'cddFields'
--
-- * 'cddAlt'
captionsDelete'
    :: Text -- ^ 'id'
    -> CaptionsDelete'
captionsDelete' pCddId_ =
    CaptionsDelete'
    { _cddOnBehalfOf = Nothing
    , _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddUserIp = Nothing
    , _cddOnBehalfOfContentOwner = Nothing
    , _cddKey = Nothing
    , _cddId = pCddId_
    , _cddOauthToken = Nothing
    , _cddFields = Nothing
    , _cddAlt = JSON
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
cddOnBehalfOf :: Lens' CaptionsDelete' (Maybe Text)
cddOnBehalfOf
  = lens _cddOnBehalfOf
      (\ s a -> s{_cddOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' CaptionsDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' CaptionsDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIp :: Lens' CaptionsDelete' (Maybe Text)
cddUserIp
  = lens _cddUserIp (\ s a -> s{_cddUserIp = a})

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
cddOnBehalfOfContentOwner :: Lens' CaptionsDelete' (Maybe Text)
cddOnBehalfOfContentOwner
  = lens _cddOnBehalfOfContentOwner
      (\ s a -> s{_cddOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' CaptionsDelete' (Maybe Text)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | The id parameter identifies the caption track that is being deleted. The
-- value is a caption track ID as identified by the id property in a
-- caption resource.
cddId :: Lens' CaptionsDelete' Text
cddId = lens _cddId (\ s a -> s{_cddId = a})

-- | OAuth 2.0 token for the current user.
cddOauthToken :: Lens' CaptionsDelete' (Maybe Text)
cddOauthToken
  = lens _cddOauthToken
      (\ s a -> s{_cddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CaptionsDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

-- | Data format for the response.
cddAlt :: Lens' CaptionsDelete' Alt
cddAlt = lens _cddAlt (\ s a -> s{_cddAlt = a})

instance GoogleRequest CaptionsDelete' where
        type Rs CaptionsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsDelete'{..}
          = go _cddOnBehalfOf _cddQuotaUser
              (Just _cddPrettyPrint)
              _cddUserIp
              _cddOnBehalfOfContentOwner
              _cddKey
              (Just _cddId)
              _cddOauthToken
              _cddFields
              (Just _cddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CaptionsDeleteResource)
                      r
                      u
