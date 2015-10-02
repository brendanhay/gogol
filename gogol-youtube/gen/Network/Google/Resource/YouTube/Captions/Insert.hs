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
-- Module      : Network.Google.Resource.YouTube.Captions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsInsert@.
module Network.Google.Resource.YouTube.Captions.Insert
    (
    -- * REST Resource
      CaptionsInsertResource

    -- * Creating a Request
    , captionsInsert'
    , CaptionsInsert'

    -- * Request Lenses
    , ciOnBehalfOf
    , ciQuotaUser
    , ciPart
    , ciPrettyPrint
    , ciUserIP
    , ciCaption
    , ciMedia
    , ciOnBehalfOfContentOwner
    , ciKey
    , ciSync
    , ciOAuthToken
    , ciFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsInsert@ which the
-- 'CaptionsInsert'' request conforms to.
type CaptionsInsertResource =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "sync" Bool :>
             QueryParam "part" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             MultipartRelated '[JSON] Caption Body :>
                               Post '[JSON] Caption

-- | Uploads a caption track.
--
-- /See:/ 'captionsInsert'' smart constructor.
data CaptionsInsert' = CaptionsInsert'
    { _ciOnBehalfOf             :: !(Maybe Text)
    , _ciQuotaUser              :: !(Maybe Text)
    , _ciPart                   :: !Text
    , _ciPrettyPrint            :: !Bool
    , _ciUserIP                 :: !(Maybe Text)
    , _ciCaption                :: !Caption
    , _ciMedia                  :: !Body
    , _ciOnBehalfOfContentOwner :: !(Maybe Text)
    , _ciKey                    :: !(Maybe Key)
    , _ciSync                   :: !(Maybe Bool)
    , _ciOAuthToken             :: !(Maybe OAuthToken)
    , _ciFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciOnBehalfOf'
--
-- * 'ciQuotaUser'
--
-- * 'ciPart'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciCaption'
--
-- * 'ciMedia'
--
-- * 'ciOnBehalfOfContentOwner'
--
-- * 'ciKey'
--
-- * 'ciSync'
--
-- * 'ciOAuthToken'
--
-- * 'ciFields'
captionsInsert'
    :: Text -- ^ 'part'
    -> Caption -- ^ 'Caption'
    -> Body -- ^ 'media'
    -> CaptionsInsert'
captionsInsert' pCiPart_ pCiCaption_ pCiMedia_ =
    CaptionsInsert'
    { _ciOnBehalfOf = Nothing
    , _ciQuotaUser = Nothing
    , _ciPart = pCiPart_
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciCaption = pCiCaption_
    , _ciMedia = pCiMedia_
    , _ciOnBehalfOfContentOwner = Nothing
    , _ciKey = Nothing
    , _ciSync = Nothing
    , _ciOAuthToken = Nothing
    , _ciFields = Nothing
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
ciOnBehalfOf :: Lens' CaptionsInsert' (Maybe Text)
ciOnBehalfOf
  = lens _ciOnBehalfOf (\ s a -> s{_ciOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CaptionsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | The part parameter specifies the caption resource parts that the API
-- response will include. Set the parameter value to snippet.
ciPart :: Lens' CaptionsInsert' Text
ciPart = lens _ciPart (\ s a -> s{_ciPart = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CaptionsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIP :: Lens' CaptionsInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | Multipart request metadata.
ciCaption :: Lens' CaptionsInsert' Caption
ciCaption
  = lens _ciCaption (\ s a -> s{_ciCaption = a})

ciMedia :: Lens' CaptionsInsert' Body
ciMedia = lens _ciMedia (\ s a -> s{_ciMedia = a})

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
ciOnBehalfOfContentOwner :: Lens' CaptionsInsert' (Maybe Text)
ciOnBehalfOfContentOwner
  = lens _ciOnBehalfOfContentOwner
      (\ s a -> s{_ciOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CaptionsInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | The sync parameter indicates whether YouTube should automatically
-- synchronize the caption file with the audio track of the video. If you
-- set the value to true, YouTube will disregard any time codes that are in
-- the uploaded caption file and generate new time codes for the captions.
-- You should set the sync parameter to true if you are uploading a
-- transcript, which has no time codes, or if you suspect the time codes in
-- your file are incorrect and want YouTube to try to fix them.
ciSync :: Lens' CaptionsInsert' (Maybe Bool)
ciSync = lens _ciSync (\ s a -> s{_ciSync = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CaptionsInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CaptionsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CaptionsInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CaptionsInsert' where
        type Rs CaptionsInsert' = Caption
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsInsert'{..}
          = go _ciMedia _ciOnBehalfOf _ciOnBehalfOfContentOwner
              _ciSync
              (Just _ciPart)
              _ciQuotaUser
              (Just _ciPrettyPrint)
              _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciCaption
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CaptionsInsertResource)
                      r
                      u
