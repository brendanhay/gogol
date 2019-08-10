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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the given Association.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.delete@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Delete
    (
    -- * REST Resource
      CatalogsAssociationsDeleteResource

    -- * Creating a Request
    , catalogsAssociationsDelete
    , CatalogsAssociationsDelete

    -- * Request Lenses
    , cadXgafv
    , cadUploadProtocol
    , cadAccessToken
    , cadUploadType
    , cadName
    , cadCallback
    ) where

import           Network.Google.CloudPrivateCatalogProducer.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.delete@ method which the
-- 'CatalogsAssociationsDelete' request conforms to.
type CatalogsAssociationsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the given Association.
--
-- /See:/ 'catalogsAssociationsDelete' smart constructor.
data CatalogsAssociationsDelete =
  CatalogsAssociationsDelete'
    { _cadXgafv          :: !(Maybe Xgafv)
    , _cadUploadProtocol :: !(Maybe Text)
    , _cadAccessToken    :: !(Maybe Text)
    , _cadUploadType     :: !(Maybe Text)
    , _cadName           :: !Text
    , _cadCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsAssociationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadXgafv'
--
-- * 'cadUploadProtocol'
--
-- * 'cadAccessToken'
--
-- * 'cadUploadType'
--
-- * 'cadName'
--
-- * 'cadCallback'
catalogsAssociationsDelete
    :: Text -- ^ 'cadName'
    -> CatalogsAssociationsDelete
catalogsAssociationsDelete pCadName_ =
  CatalogsAssociationsDelete'
    { _cadXgafv = Nothing
    , _cadUploadProtocol = Nothing
    , _cadAccessToken = Nothing
    , _cadUploadType = Nothing
    , _cadName = pCadName_
    , _cadCallback = Nothing
    }


-- | V1 error format.
cadXgafv :: Lens' CatalogsAssociationsDelete (Maybe Xgafv)
cadXgafv = lens _cadXgafv (\ s a -> s{_cadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cadUploadProtocol :: Lens' CatalogsAssociationsDelete (Maybe Text)
cadUploadProtocol
  = lens _cadUploadProtocol
      (\ s a -> s{_cadUploadProtocol = a})

-- | OAuth access token.
cadAccessToken :: Lens' CatalogsAssociationsDelete (Maybe Text)
cadAccessToken
  = lens _cadAccessToken
      (\ s a -> s{_cadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cadUploadType :: Lens' CatalogsAssociationsDelete (Maybe Text)
cadUploadType
  = lens _cadUploadType
      (\ s a -> s{_cadUploadType = a})

-- | The resource name of the \`Association\` to delete.
cadName :: Lens' CatalogsAssociationsDelete Text
cadName = lens _cadName (\ s a -> s{_cadName = a})

-- | JSONP
cadCallback :: Lens' CatalogsAssociationsDelete (Maybe Text)
cadCallback
  = lens _cadCallback (\ s a -> s{_cadCallback = a})

instance GoogleRequest CatalogsAssociationsDelete
         where
        type Rs CatalogsAssociationsDelete =
             GoogleProtobufEmpty
        type Scopes CatalogsAssociationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsAssociationsDelete'{..}
          = go _cadName _cadXgafv _cadUploadProtocol
              _cadAccessToken
              _cadUploadType
              _cadCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsAssociationsDeleteResource)
                      mempty
