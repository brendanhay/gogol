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
-- Module      : Network.Google.Resource.SafeBrowsing.ThreatMatches.Find
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds the threat entries that match the Safe Browsing lists.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatMatches.find@.
module Network.Google.Resource.SafeBrowsing.ThreatMatches.Find
    (
    -- * REST Resource
      ThreatMatchesFindResource

    -- * Creating a Request
    , threatMatchesFind
    , ThreatMatchesFind

    -- * Request Lenses
    , tmfXgafv
    , tmfUploadProtocol
    , tmfAccessToken
    , tmfUploadType
    , tmfPayload
    , tmfCallback
    ) where

import Network.Google.Prelude
import Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatMatches.find@ method which the
-- 'ThreatMatchesFind' request conforms to.
type ThreatMatchesFindResource =
     "v4" :>
       "threatMatches:find" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
                       :>
                       Post '[JSON]
                         GoogleSecuritySafebrowsingV4FindThreatMatchesResponse

-- | Finds the threat entries that match the Safe Browsing lists.
--
-- /See:/ 'threatMatchesFind' smart constructor.
data ThreatMatchesFind =
  ThreatMatchesFind'
    { _tmfXgafv :: !(Maybe Xgafv)
    , _tmfUploadProtocol :: !(Maybe Text)
    , _tmfAccessToken :: !(Maybe Text)
    , _tmfUploadType :: !(Maybe Text)
    , _tmfPayload :: !GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    , _tmfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThreatMatchesFind' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmfXgafv'
--
-- * 'tmfUploadProtocol'
--
-- * 'tmfAccessToken'
--
-- * 'tmfUploadType'
--
-- * 'tmfPayload'
--
-- * 'tmfCallback'
threatMatchesFind
    :: GoogleSecuritySafebrowsingV4FindThreatMatchesRequest -- ^ 'tmfPayload'
    -> ThreatMatchesFind
threatMatchesFind pTmfPayload_ =
  ThreatMatchesFind'
    { _tmfXgafv = Nothing
    , _tmfUploadProtocol = Nothing
    , _tmfAccessToken = Nothing
    , _tmfUploadType = Nothing
    , _tmfPayload = pTmfPayload_
    , _tmfCallback = Nothing
    }


-- | V1 error format.
tmfXgafv :: Lens' ThreatMatchesFind (Maybe Xgafv)
tmfXgafv = lens _tmfXgafv (\ s a -> s{_tmfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tmfUploadProtocol :: Lens' ThreatMatchesFind (Maybe Text)
tmfUploadProtocol
  = lens _tmfUploadProtocol
      (\ s a -> s{_tmfUploadProtocol = a})

-- | OAuth access token.
tmfAccessToken :: Lens' ThreatMatchesFind (Maybe Text)
tmfAccessToken
  = lens _tmfAccessToken
      (\ s a -> s{_tmfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tmfUploadType :: Lens' ThreatMatchesFind (Maybe Text)
tmfUploadType
  = lens _tmfUploadType
      (\ s a -> s{_tmfUploadType = a})

-- | Multipart request metadata.
tmfPayload :: Lens' ThreatMatchesFind GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
tmfPayload
  = lens _tmfPayload (\ s a -> s{_tmfPayload = a})

-- | JSONP
tmfCallback :: Lens' ThreatMatchesFind (Maybe Text)
tmfCallback
  = lens _tmfCallback (\ s a -> s{_tmfCallback = a})

instance GoogleRequest ThreatMatchesFind where
        type Rs ThreatMatchesFind =
             GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
        type Scopes ThreatMatchesFind = '[]
        requestClient ThreatMatchesFind'{..}
          = go _tmfXgafv _tmfUploadProtocol _tmfAccessToken
              _tmfUploadType
              _tmfCallback
              (Just AltJSON)
              _tmfPayload
              safeBrowsingService
          where go
                  = buildClient
                      (Proxy :: Proxy ThreatMatchesFindResource)
                      mempty
