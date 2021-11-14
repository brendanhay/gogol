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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative field by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.get@.
module Network.Google.Resource.DFAReporting.CreativeFields.Get
    (
    -- * REST Resource
      CreativeFieldsGetResource

    -- * Creating a Request
    , creativeFieldsGet
    , CreativeFieldsGet

    -- * Request Lenses
    , cfgXgafv
    , cfgUploadProtocol
    , cfgAccessToken
    , cfgUploadType
    , cfgProFileId
    , cfgId
    , cfgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.get@ method which the
-- 'CreativeFieldsGet' request conforms to.
type CreativeFieldsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] CreativeField

-- | Gets one creative field by ID.
--
-- /See:/ 'creativeFieldsGet' smart constructor.
data CreativeFieldsGet =
  CreativeFieldsGet'
    { _cfgXgafv :: !(Maybe Xgafv)
    , _cfgUploadProtocol :: !(Maybe Text)
    , _cfgAccessToken :: !(Maybe Text)
    , _cfgUploadType :: !(Maybe Text)
    , _cfgProFileId :: !(Textual Int64)
    , _cfgId :: !(Textual Int64)
    , _cfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfgXgafv'
--
-- * 'cfgUploadProtocol'
--
-- * 'cfgAccessToken'
--
-- * 'cfgUploadType'
--
-- * 'cfgProFileId'
--
-- * 'cfgId'
--
-- * 'cfgCallback'
creativeFieldsGet
    :: Int64 -- ^ 'cfgProFileId'
    -> Int64 -- ^ 'cfgId'
    -> CreativeFieldsGet
creativeFieldsGet pCfgProFileId_ pCfgId_ =
  CreativeFieldsGet'
    { _cfgXgafv = Nothing
    , _cfgUploadProtocol = Nothing
    , _cfgAccessToken = Nothing
    , _cfgUploadType = Nothing
    , _cfgProFileId = _Coerce # pCfgProFileId_
    , _cfgId = _Coerce # pCfgId_
    , _cfgCallback = Nothing
    }


-- | V1 error format.
cfgXgafv :: Lens' CreativeFieldsGet (Maybe Xgafv)
cfgXgafv = lens _cfgXgafv (\ s a -> s{_cfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfgUploadProtocol :: Lens' CreativeFieldsGet (Maybe Text)
cfgUploadProtocol
  = lens _cfgUploadProtocol
      (\ s a -> s{_cfgUploadProtocol = a})

-- | OAuth access token.
cfgAccessToken :: Lens' CreativeFieldsGet (Maybe Text)
cfgAccessToken
  = lens _cfgAccessToken
      (\ s a -> s{_cfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfgUploadType :: Lens' CreativeFieldsGet (Maybe Text)
cfgUploadType
  = lens _cfgUploadType
      (\ s a -> s{_cfgUploadType = a})

-- | User profile ID associated with this request.
cfgProFileId :: Lens' CreativeFieldsGet Int64
cfgProFileId
  = lens _cfgProFileId (\ s a -> s{_cfgProFileId = a})
      . _Coerce

-- | Creative Field ID
cfgId :: Lens' CreativeFieldsGet Int64
cfgId
  = lens _cfgId (\ s a -> s{_cfgId = a}) . _Coerce

-- | JSONP
cfgCallback :: Lens' CreativeFieldsGet (Maybe Text)
cfgCallback
  = lens _cfgCallback (\ s a -> s{_cfgCallback = a})

instance GoogleRequest CreativeFieldsGet where
        type Rs CreativeFieldsGet = CreativeField
        type Scopes CreativeFieldsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsGet'{..}
          = go _cfgProFileId _cfgId _cfgXgafv
              _cfgUploadProtocol
              _cfgAccessToken
              _cfgUploadType
              _cfgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsGetResource)
                      mempty
