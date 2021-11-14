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
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one postal code by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.postalCodes.get@.
module Network.Google.Resource.DFAReporting.PostalCodes.Get
    (
    -- * REST Resource
      PostalCodesGetResource

    -- * Creating a Request
    , postalCodesGet
    , PostalCodesGet

    -- * Request Lenses
    , pcgXgafv
    , pcgUploadProtocol
    , pcgAccessToken
    , pcgUploadType
    , pcgProFileId
    , pcgCode
    , pcgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.postalCodes.get@ method which the
-- 'PostalCodesGet' request conforms to.
type PostalCodesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "postalCodes" :>
               Capture "code" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] PostalCode

-- | Gets one postal code by ID.
--
-- /See:/ 'postalCodesGet' smart constructor.
data PostalCodesGet =
  PostalCodesGet'
    { _pcgXgafv :: !(Maybe Xgafv)
    , _pcgUploadProtocol :: !(Maybe Text)
    , _pcgAccessToken :: !(Maybe Text)
    , _pcgUploadType :: !(Maybe Text)
    , _pcgProFileId :: !(Textual Int64)
    , _pcgCode :: !Text
    , _pcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostalCodesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgXgafv'
--
-- * 'pcgUploadProtocol'
--
-- * 'pcgAccessToken'
--
-- * 'pcgUploadType'
--
-- * 'pcgProFileId'
--
-- * 'pcgCode'
--
-- * 'pcgCallback'
postalCodesGet
    :: Int64 -- ^ 'pcgProFileId'
    -> Text -- ^ 'pcgCode'
    -> PostalCodesGet
postalCodesGet pPcgProFileId_ pPcgCode_ =
  PostalCodesGet'
    { _pcgXgafv = Nothing
    , _pcgUploadProtocol = Nothing
    , _pcgAccessToken = Nothing
    , _pcgUploadType = Nothing
    , _pcgProFileId = _Coerce # pPcgProFileId_
    , _pcgCode = pPcgCode_
    , _pcgCallback = Nothing
    }


-- | V1 error format.
pcgXgafv :: Lens' PostalCodesGet (Maybe Xgafv)
pcgXgafv = lens _pcgXgafv (\ s a -> s{_pcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcgUploadProtocol :: Lens' PostalCodesGet (Maybe Text)
pcgUploadProtocol
  = lens _pcgUploadProtocol
      (\ s a -> s{_pcgUploadProtocol = a})

-- | OAuth access token.
pcgAccessToken :: Lens' PostalCodesGet (Maybe Text)
pcgAccessToken
  = lens _pcgAccessToken
      (\ s a -> s{_pcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcgUploadType :: Lens' PostalCodesGet (Maybe Text)
pcgUploadType
  = lens _pcgUploadType
      (\ s a -> s{_pcgUploadType = a})

-- | User profile ID associated with this request.
pcgProFileId :: Lens' PostalCodesGet Int64
pcgProFileId
  = lens _pcgProFileId (\ s a -> s{_pcgProFileId = a})
      . _Coerce

-- | Postal code ID.
pcgCode :: Lens' PostalCodesGet Text
pcgCode = lens _pcgCode (\ s a -> s{_pcgCode = a})

-- | JSONP
pcgCallback :: Lens' PostalCodesGet (Maybe Text)
pcgCallback
  = lens _pcgCallback (\ s a -> s{_pcgCallback = a})

instance GoogleRequest PostalCodesGet where
        type Rs PostalCodesGet = PostalCode
        type Scopes PostalCodesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PostalCodesGet'{..}
          = go _pcgProFileId _pcgCode _pcgXgafv
              _pcgUploadProtocol
              _pcgAccessToken
              _pcgUploadType
              _pcgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy PostalCodesGetResource)
                      mempty
