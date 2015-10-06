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
-- Module      : Network.Google.Resource.Language.Detections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Detect the language of text.
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @LanguageDetectionsList@.
module Network.Google.Resource.Language.Detections.List
    (
    -- * REST Resource
      DetectionsListResource

    -- * Creating a Request
    , detectionsList'
    , DetectionsList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlUserIP
    , dlQ
    , dlKey
    , dlOAuthToken
    , dlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @LanguageDetectionsList@ which the
-- 'DetectionsList'' request conforms to.
type DetectionsListResource =
     "v2" :>
       "detect" :>
         QueryParams "q" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] DetectionsListResponse

-- | Detect the language of text.
--
-- /See:/ 'detectionsList'' smart constructor.
data DetectionsList' = DetectionsList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlUserIP      :: !(Maybe Text)
    , _dlQ           :: ![Text]
    , _dlKey         :: !(Maybe AuthKey)
    , _dlOAuthToken  :: !(Maybe OAuthToken)
    , _dlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetectionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUserIP'
--
-- * 'dlQ'
--
-- * 'dlKey'
--
-- * 'dlOAuthToken'
--
-- * 'dlFields'
detectionsList'
    :: [Text] -- ^ 'q'
    -> DetectionsList'
detectionsList' pDlQ_ =
    DetectionsList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlUserIP = Nothing
    , _dlQ = pDlQ_
    , _dlKey = Nothing
    , _dlOAuthToken = Nothing
    , _dlFields = Nothing
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
dlUserIP :: Lens' DetectionsList' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | The text to detect
dlQ :: Lens' DetectionsList' [Text]
dlQ = lens _dlQ (\ s a -> s{_dlQ = a}) . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DetectionsList' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DetectionsList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DetectionsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DetectionsList' where
        _AuthKey = dlKey . _Just
        _AuthToken = dlOAuthToken . _Just

instance GoogleRequest DetectionsList' where
        type Rs DetectionsList' = DetectionsListResponse
        request = requestWith translateRequest
        requestWith rq DetectionsList'{..}
          = go _dlQ _dlQuotaUser (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DetectionsListResource)
                      rq
