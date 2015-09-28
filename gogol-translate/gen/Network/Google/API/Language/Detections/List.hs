{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Language.Detections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Detect the language of text.
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @language.detections.list@.
module Network.Google.API.Language.Detections.List
    (
    -- * REST Resource
      DetectionsListAPI

    -- * Creating a Request
    , detectionsList'
    , DetectionsList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlUserIp
    , dlQ
    , dlKey
    , dlOauthToken
    , dlFields
    , dlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for language.detections.list which the
-- 'DetectionsList'' request conforms to.
type DetectionsListAPI =
     "v2" :>
       "detect" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "q" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] DetectionsListResponse

-- | Detect the language of text.
--
-- /See:/ 'detectionsList'' smart constructor.
data DetectionsList' = DetectionsList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlUserIp      :: !(Maybe Text)
    , _dlQ           :: !Text
    , _dlKey         :: !(Maybe Text)
    , _dlOauthToken  :: !(Maybe Text)
    , _dlFields      :: !(Maybe Text)
    , _dlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetectionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUserIp'
--
-- * 'dlQ'
--
-- * 'dlKey'
--
-- * 'dlOauthToken'
--
-- * 'dlFields'
--
-- * 'dlAlt'
detectionsList'
    :: Text -- ^ 'q'
    -> DetectionsList'
detectionsList' pDlQ_ =
    DetectionsList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUserIp = Nothing
    , _dlQ = pDlQ_
    , _dlKey = Nothing
    , _dlOauthToken = Nothing
    , _dlFields = Nothing
    , _dlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DetectionsList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DetectionsList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIp :: Lens' DetectionsList' (Maybe Text)
dlUserIp = lens _dlUserIp (\ s a -> s{_dlUserIp = a})

-- | The text to detect
dlQ :: Lens' DetectionsList' Text
dlQ = lens _dlQ (\ s a -> s{_dlQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DetectionsList' (Maybe Text)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | OAuth 2.0 token for the current user.
dlOauthToken :: Lens' DetectionsList' (Maybe Text)
dlOauthToken
  = lens _dlOauthToken (\ s a -> s{_dlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DetectionsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | Data format for the response.
dlAlt :: Lens' DetectionsList' Alt
dlAlt = lens _dlAlt (\ s a -> s{_dlAlt = a})

instance GoogleRequest DetectionsList' where
        type Rs DetectionsList' = DetectionsListResponse
        request = requestWithRoute defReq translateURL
        requestWithRoute r u DetectionsList'{..}
          = go _dlQuotaUser (Just _dlPrettyPrint) _dlUserIp
              (Just _dlQ)
              _dlKey
              _dlOauthToken
              _dlFields
              (Just _dlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DetectionsListAPI)
                      r
                      u
