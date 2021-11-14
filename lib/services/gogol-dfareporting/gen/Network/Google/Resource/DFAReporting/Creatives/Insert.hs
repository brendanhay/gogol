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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creatives.insert@.
module Network.Google.Resource.DFAReporting.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertResource

    -- * Creating a Request
    , creativesInsert
    , CreativesInsert

    -- * Request Lenses
    , ciXgafv
    , ciUploadProtocol
    , ciAccessToken
    , ciUploadType
    , ciProFileId
    , ciPayload
    , ciCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.insert@ method which the
-- 'CreativesInsert' request conforms to.
type CreativesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Inserts a new creative.
--
-- /See:/ 'creativesInsert' smart constructor.
data CreativesInsert =
  CreativesInsert'
    { _ciXgafv :: !(Maybe Xgafv)
    , _ciUploadProtocol :: !(Maybe Text)
    , _ciAccessToken :: !(Maybe Text)
    , _ciUploadType :: !(Maybe Text)
    , _ciProFileId :: !(Textual Int64)
    , _ciPayload :: !Creative
    , _ciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciXgafv'
--
-- * 'ciUploadProtocol'
--
-- * 'ciAccessToken'
--
-- * 'ciUploadType'
--
-- * 'ciProFileId'
--
-- * 'ciPayload'
--
-- * 'ciCallback'
creativesInsert
    :: Int64 -- ^ 'ciProFileId'
    -> Creative -- ^ 'ciPayload'
    -> CreativesInsert
creativesInsert pCiProFileId_ pCiPayload_ =
  CreativesInsert'
    { _ciXgafv = Nothing
    , _ciUploadProtocol = Nothing
    , _ciAccessToken = Nothing
    , _ciUploadType = Nothing
    , _ciProFileId = _Coerce # pCiProFileId_
    , _ciPayload = pCiPayload_
    , _ciCallback = Nothing
    }


-- | V1 error format.
ciXgafv :: Lens' CreativesInsert (Maybe Xgafv)
ciXgafv = lens _ciXgafv (\ s a -> s{_ciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ciUploadProtocol :: Lens' CreativesInsert (Maybe Text)
ciUploadProtocol
  = lens _ciUploadProtocol
      (\ s a -> s{_ciUploadProtocol = a})

-- | OAuth access token.
ciAccessToken :: Lens' CreativesInsert (Maybe Text)
ciAccessToken
  = lens _ciAccessToken
      (\ s a -> s{_ciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ciUploadType :: Lens' CreativesInsert (Maybe Text)
ciUploadType
  = lens _ciUploadType (\ s a -> s{_ciUploadType = a})

-- | User profile ID associated with this request.
ciProFileId :: Lens' CreativesInsert Int64
ciProFileId
  = lens _ciProFileId (\ s a -> s{_ciProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
ciPayload :: Lens' CreativesInsert Creative
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | JSONP
ciCallback :: Lens' CreativesInsert (Maybe Text)
ciCallback
  = lens _ciCallback (\ s a -> s{_ciCallback = a})

instance GoogleRequest CreativesInsert where
        type Rs CreativesInsert = Creative
        type Scopes CreativesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativesInsert'{..}
          = go _ciProFileId _ciXgafv _ciUploadProtocol
              _ciAccessToken
              _ciUploadType
              _ciCallback
              (Just AltJSON)
              _ciPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesInsertResource)
                      mempty
