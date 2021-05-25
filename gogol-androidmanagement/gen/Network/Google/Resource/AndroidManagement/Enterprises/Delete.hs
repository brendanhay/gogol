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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an enterprise. Only available for EMM-managed enterprises.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.delete@.
module Network.Google.Resource.AndroidManagement.Enterprises.Delete
    (
    -- * REST Resource
      EnterprisesDeleteResource

    -- * Creating a Request
    , enterprisesDelete
    , EnterprisesDelete

    -- * Request Lenses
    , edXgafv
    , edUploadProtocol
    , edAccessToken
    , edUploadType
    , edName
    , edCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.delete@ method which the
-- 'EnterprisesDelete' request conforms to.
type EnterprisesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an enterprise. Only available for EMM-managed enterprises.
--
-- /See:/ 'enterprisesDelete' smart constructor.
data EnterprisesDelete =
  EnterprisesDelete'
    { _edXgafv :: !(Maybe Xgafv)
    , _edUploadProtocol :: !(Maybe Text)
    , _edAccessToken :: !(Maybe Text)
    , _edUploadType :: !(Maybe Text)
    , _edName :: !Text
    , _edCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edXgafv'
--
-- * 'edUploadProtocol'
--
-- * 'edAccessToken'
--
-- * 'edUploadType'
--
-- * 'edName'
--
-- * 'edCallback'
enterprisesDelete
    :: Text -- ^ 'edName'
    -> EnterprisesDelete
enterprisesDelete pEdName_ =
  EnterprisesDelete'
    { _edXgafv = Nothing
    , _edUploadProtocol = Nothing
    , _edAccessToken = Nothing
    , _edUploadType = Nothing
    , _edName = pEdName_
    , _edCallback = Nothing
    }


-- | V1 error format.
edXgafv :: Lens' EnterprisesDelete (Maybe Xgafv)
edXgafv = lens _edXgafv (\ s a -> s{_edXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edUploadProtocol :: Lens' EnterprisesDelete (Maybe Text)
edUploadProtocol
  = lens _edUploadProtocol
      (\ s a -> s{_edUploadProtocol = a})

-- | OAuth access token.
edAccessToken :: Lens' EnterprisesDelete (Maybe Text)
edAccessToken
  = lens _edAccessToken
      (\ s a -> s{_edAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edUploadType :: Lens' EnterprisesDelete (Maybe Text)
edUploadType
  = lens _edUploadType (\ s a -> s{_edUploadType = a})

-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
edName :: Lens' EnterprisesDelete Text
edName = lens _edName (\ s a -> s{_edName = a})

-- | JSONP
edCallback :: Lens' EnterprisesDelete (Maybe Text)
edCallback
  = lens _edCallback (\ s a -> s{_edCallback = a})

instance GoogleRequest EnterprisesDelete where
        type Rs EnterprisesDelete = Empty
        type Scopes EnterprisesDelete =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDelete'{..}
          = go _edName _edXgafv _edUploadProtocol
              _edAccessToken
              _edUploadType
              _edCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDeleteResource)
                      mempty
