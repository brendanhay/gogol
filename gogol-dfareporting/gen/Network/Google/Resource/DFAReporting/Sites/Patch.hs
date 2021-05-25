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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing site. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sites.patch@.
module Network.Google.Resource.DFAReporting.Sites.Patch
    (
    -- * REST Resource
      SitesPatchResource

    -- * Creating a Request
    , sitesPatch
    , SitesPatch

    -- * Request Lenses
    , spXgafv
    , spUploadProtocol
    , spAccessToken
    , spUploadType
    , spProFileId
    , spPayload
    , spId
    , spCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.patch@ method which the
-- 'SitesPatch' request conforms to.
type SitesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sites" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Site :> Patch '[JSON] Site

-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ 'sitesPatch' smart constructor.
data SitesPatch =
  SitesPatch'
    { _spXgafv :: !(Maybe Xgafv)
    , _spUploadProtocol :: !(Maybe Text)
    , _spAccessToken :: !(Maybe Text)
    , _spUploadType :: !(Maybe Text)
    , _spProFileId :: !(Textual Int64)
    , _spPayload :: !Site
    , _spId :: !(Textual Int64)
    , _spCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spXgafv'
--
-- * 'spUploadProtocol'
--
-- * 'spAccessToken'
--
-- * 'spUploadType'
--
-- * 'spProFileId'
--
-- * 'spPayload'
--
-- * 'spId'
--
-- * 'spCallback'
sitesPatch
    :: Int64 -- ^ 'spProFileId'
    -> Site -- ^ 'spPayload'
    -> Int64 -- ^ 'spId'
    -> SitesPatch
sitesPatch pSpProFileId_ pSpPayload_ pSpId_ =
  SitesPatch'
    { _spXgafv = Nothing
    , _spUploadProtocol = Nothing
    , _spAccessToken = Nothing
    , _spUploadType = Nothing
    , _spProFileId = _Coerce # pSpProFileId_
    , _spPayload = pSpPayload_
    , _spId = _Coerce # pSpId_
    , _spCallback = Nothing
    }


-- | V1 error format.
spXgafv :: Lens' SitesPatch (Maybe Xgafv)
spXgafv = lens _spXgafv (\ s a -> s{_spXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spUploadProtocol :: Lens' SitesPatch (Maybe Text)
spUploadProtocol
  = lens _spUploadProtocol
      (\ s a -> s{_spUploadProtocol = a})

-- | OAuth access token.
spAccessToken :: Lens' SitesPatch (Maybe Text)
spAccessToken
  = lens _spAccessToken
      (\ s a -> s{_spAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spUploadType :: Lens' SitesPatch (Maybe Text)
spUploadType
  = lens _spUploadType (\ s a -> s{_spUploadType = a})

-- | User profile ID associated with this request.
spProFileId :: Lens' SitesPatch Int64
spProFileId
  = lens _spProFileId (\ s a -> s{_spProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
spPayload :: Lens' SitesPatch Site
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Site ID.
spId :: Lens' SitesPatch Int64
spId = lens _spId (\ s a -> s{_spId = a}) . _Coerce

-- | JSONP
spCallback :: Lens' SitesPatch (Maybe Text)
spCallback
  = lens _spCallback (\ s a -> s{_spCallback = a})

instance GoogleRequest SitesPatch where
        type Rs SitesPatch = Site
        type Scopes SitesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SitesPatch'{..}
          = go _spProFileId (Just _spId) _spXgafv
              _spUploadProtocol
              _spAccessToken
              _spUploadType
              _spCallback
              (Just AltJSON)
              _spPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesPatchResource)
                      mempty
