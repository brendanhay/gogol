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
-- Module      : Network.Google.Resource.YouTube.Captions.Download
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsDownload@.
module Network.Google.Resource.YouTube.Captions.Download
    (
    -- * REST Resource
      CaptionsDownloadResource

    -- * Creating a Request
    , captionsDownload'
    , CaptionsDownload'

    -- * Request Lenses
    , capaOnBehalfOf
    , capaQuotaUser
    , capaPrettyPrint
    , capaUserIp
    , capaTlang
    , capaOnBehalfOfContentOwner
    , capaKey
    , capaId
    , capaTfmt
    , capaOauthToken
    , capaFields
    , capaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsDownload@ which the
-- 'CaptionsDownload'' request conforms to.
type CaptionsDownloadResource =
     "captions" :>
       Capture "id" Text :>
         QueryParam "onBehalfOf" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "tlang" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "tfmt" YouTubeCaptionsDownloadTfmt :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] ()

-- | Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
--
-- /See:/ 'captionsDownload'' smart constructor.
data CaptionsDownload' = CaptionsDownload'
    { _capaOnBehalfOf             :: !(Maybe Text)
    , _capaQuotaUser              :: !(Maybe Text)
    , _capaPrettyPrint            :: !Bool
    , _capaUserIp                 :: !(Maybe Text)
    , _capaTlang                  :: !(Maybe Text)
    , _capaOnBehalfOfContentOwner :: !(Maybe Text)
    , _capaKey                    :: !(Maybe Text)
    , _capaId                     :: !Text
    , _capaTfmt                   :: !(Maybe YouTubeCaptionsDownloadTfmt)
    , _capaOauthToken             :: !(Maybe Text)
    , _capaFields                 :: !(Maybe Text)
    , _capaAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsDownload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capaOnBehalfOf'
--
-- * 'capaQuotaUser'
--
-- * 'capaPrettyPrint'
--
-- * 'capaUserIp'
--
-- * 'capaTlang'
--
-- * 'capaOnBehalfOfContentOwner'
--
-- * 'capaKey'
--
-- * 'capaId'
--
-- * 'capaTfmt'
--
-- * 'capaOauthToken'
--
-- * 'capaFields'
--
-- * 'capaAlt'
captionsDownload'
    :: Text -- ^ 'id'
    -> CaptionsDownload'
captionsDownload' pCapaId_ =
    CaptionsDownload'
    { _capaOnBehalfOf = Nothing
    , _capaQuotaUser = Nothing
    , _capaPrettyPrint = True
    , _capaUserIp = Nothing
    , _capaTlang = Nothing
    , _capaOnBehalfOfContentOwner = Nothing
    , _capaKey = Nothing
    , _capaId = pCapaId_
    , _capaTfmt = Nothing
    , _capaOauthToken = Nothing
    , _capaFields = Nothing
    , _capaAlt = JSON
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
capaOnBehalfOf :: Lens' CaptionsDownload' (Maybe Text)
capaOnBehalfOf
  = lens _capaOnBehalfOf
      (\ s a -> s{_capaOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
capaQuotaUser :: Lens' CaptionsDownload' (Maybe Text)
capaQuotaUser
  = lens _capaQuotaUser
      (\ s a -> s{_capaQuotaUser = a})

-- | Returns response with indentations and line breaks.
capaPrettyPrint :: Lens' CaptionsDownload' Bool
capaPrettyPrint
  = lens _capaPrettyPrint
      (\ s a -> s{_capaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
capaUserIp :: Lens' CaptionsDownload' (Maybe Text)
capaUserIp
  = lens _capaUserIp (\ s a -> s{_capaUserIp = a})

-- | The tlang parameter specifies that the API response should return a
-- translation of the specified caption track. The parameter value is an
-- ISO 639-1 two-letter language code that identifies the desired caption
-- language. The translation is generated by using machine translation,
-- such as Google Translate.
capaTlang :: Lens' CaptionsDownload' (Maybe Text)
capaTlang
  = lens _capaTlang (\ s a -> s{_capaTlang = a})

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
capaOnBehalfOfContentOwner :: Lens' CaptionsDownload' (Maybe Text)
capaOnBehalfOfContentOwner
  = lens _capaOnBehalfOfContentOwner
      (\ s a -> s{_capaOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
capaKey :: Lens' CaptionsDownload' (Maybe Text)
capaKey = lens _capaKey (\ s a -> s{_capaKey = a})

-- | The id parameter identifies the caption track that is being retrieved.
-- The value is a caption track ID as identified by the id property in a
-- caption resource.
capaId :: Lens' CaptionsDownload' Text
capaId = lens _capaId (\ s a -> s{_capaId = a})

-- | The tfmt parameter specifies that the caption track should be returned
-- in a specific format. If the parameter is not included in the request,
-- the track is returned in its original format.
capaTfmt :: Lens' CaptionsDownload' (Maybe YouTubeCaptionsDownloadTfmt)
capaTfmt = lens _capaTfmt (\ s a -> s{_capaTfmt = a})

-- | OAuth 2.0 token for the current user.
capaOauthToken :: Lens' CaptionsDownload' (Maybe Text)
capaOauthToken
  = lens _capaOauthToken
      (\ s a -> s{_capaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
capaFields :: Lens' CaptionsDownload' (Maybe Text)
capaFields
  = lens _capaFields (\ s a -> s{_capaFields = a})

-- | Data format for the response.
capaAlt :: Lens' CaptionsDownload' Alt
capaAlt = lens _capaAlt (\ s a -> s{_capaAlt = a})

instance GoogleRequest CaptionsDownload' where
        type Rs CaptionsDownload' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsDownload'{..}
          = go _capaOnBehalfOf _capaQuotaUser
              (Just _capaPrettyPrint)
              _capaUserIp
              _capaTlang
              _capaOnBehalfOfContentOwner
              _capaKey
              _capaId
              _capaTfmt
              _capaOauthToken
              _capaFields
              (Just _capaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CaptionsDownloadResource)
                      r
                      u
