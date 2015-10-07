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
    , cddUserIP
    , cddOnBehalfOfContentOwner
    , cddKey
    , cddId
    , cddOAuthToken
    , cddFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsDelete@ method which the
-- 'CaptionsDelete'' request conforms to.
type CaptionsDeleteResource =
     "captions" :>
       QueryParam "id" Text :>
         QueryParam "onBehalfOf" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a specified caption track.
--
-- /See:/ 'captionsDelete'' smart constructor.
data CaptionsDelete' = CaptionsDelete'
    { _cddOnBehalfOf             :: !(Maybe Text)
    , _cddQuotaUser              :: !(Maybe Text)
    , _cddPrettyPrint            :: !Bool
    , _cddUserIP                 :: !(Maybe Text)
    , _cddOnBehalfOfContentOwner :: !(Maybe Text)
    , _cddKey                    :: !(Maybe AuthKey)
    , _cddId                     :: !Text
    , _cddOAuthToken             :: !(Maybe OAuthToken)
    , _cddFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cddUserIP'
--
-- * 'cddOnBehalfOfContentOwner'
--
-- * 'cddKey'
--
-- * 'cddId'
--
-- * 'cddOAuthToken'
--
-- * 'cddFields'
captionsDelete'
    :: Text -- ^ 'id'
    -> CaptionsDelete'
captionsDelete' pCddId_ =
    CaptionsDelete'
    { _cddOnBehalfOf = Nothing
    , _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddUserIP = Nothing
    , _cddOnBehalfOfContentOwner = Nothing
    , _cddKey = Nothing
    , _cddId = pCddId_
    , _cddOAuthToken = Nothing
    , _cddFields = Nothing
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
cddUserIP :: Lens' CaptionsDelete' (Maybe Text)
cddUserIP
  = lens _cddUserIP (\ s a -> s{_cddUserIP = a})

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
cddKey :: Lens' CaptionsDelete' (Maybe AuthKey)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | The id parameter identifies the caption track that is being deleted. The
-- value is a caption track ID as identified by the id property in a
-- caption resource.
cddId :: Lens' CaptionsDelete' Text
cddId = lens _cddId (\ s a -> s{_cddId = a})

-- | OAuth 2.0 token for the current user.
cddOAuthToken :: Lens' CaptionsDelete' (Maybe OAuthToken)
cddOAuthToken
  = lens _cddOAuthToken
      (\ s a -> s{_cddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CaptionsDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

instance GoogleAuth CaptionsDelete' where
        _AuthKey = cddKey . _Just
        _AuthToken = cddOAuthToken . _Just

instance GoogleRequest CaptionsDelete' where
        type Rs CaptionsDelete' = ()
        request = requestWith youTubeRequest
        requestWith rq CaptionsDelete'{..}
          = go (Just _cddId) _cddOnBehalfOf
              _cddOnBehalfOfContentOwner
              _cddQuotaUser
              (Just _cddPrettyPrint)
              _cddUserIP
              _cddFields
              _cddKey
              _cddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CaptionsDeleteResource)
                      rq
