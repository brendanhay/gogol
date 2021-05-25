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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Rename
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Renames a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.rename@.
module Network.Google.Resource.Directory.Resources.Features.Rename
    (
    -- * REST Resource
      ResourcesFeaturesRenameResource

    -- * Creating a Request
    , resourcesFeaturesRename
    , ResourcesFeaturesRename

    -- * Request Lenses
    , rfrXgafv
    , rfrUploadProtocol
    , rfrAccessToken
    , rfrUploadType
    , rfrPayload
    , rfrCustomer
    , rfrOldName
    , rfrCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.features.rename@ method which the
-- 'ResourcesFeaturesRename' request conforms to.
type ResourcesFeaturesRenameResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   Capture "oldName" Text :>
                     "rename" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] FeatureRename :>
                                     Post '[JSON] ()

-- | Renames a feature.
--
-- /See:/ 'resourcesFeaturesRename' smart constructor.
data ResourcesFeaturesRename =
  ResourcesFeaturesRename'
    { _rfrXgafv :: !(Maybe Xgafv)
    , _rfrUploadProtocol :: !(Maybe Text)
    , _rfrAccessToken :: !(Maybe Text)
    , _rfrUploadType :: !(Maybe Text)
    , _rfrPayload :: !FeatureRename
    , _rfrCustomer :: !Text
    , _rfrOldName :: !Text
    , _rfrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesFeaturesRename' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrXgafv'
--
-- * 'rfrUploadProtocol'
--
-- * 'rfrAccessToken'
--
-- * 'rfrUploadType'
--
-- * 'rfrPayload'
--
-- * 'rfrCustomer'
--
-- * 'rfrOldName'
--
-- * 'rfrCallback'
resourcesFeaturesRename
    :: FeatureRename -- ^ 'rfrPayload'
    -> Text -- ^ 'rfrCustomer'
    -> Text -- ^ 'rfrOldName'
    -> ResourcesFeaturesRename
resourcesFeaturesRename pRfrPayload_ pRfrCustomer_ pRfrOldName_ =
  ResourcesFeaturesRename'
    { _rfrXgafv = Nothing
    , _rfrUploadProtocol = Nothing
    , _rfrAccessToken = Nothing
    , _rfrUploadType = Nothing
    , _rfrPayload = pRfrPayload_
    , _rfrCustomer = pRfrCustomer_
    , _rfrOldName = pRfrOldName_
    , _rfrCallback = Nothing
    }


-- | V1 error format.
rfrXgafv :: Lens' ResourcesFeaturesRename (Maybe Xgafv)
rfrXgafv = lens _rfrXgafv (\ s a -> s{_rfrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rfrUploadProtocol :: Lens' ResourcesFeaturesRename (Maybe Text)
rfrUploadProtocol
  = lens _rfrUploadProtocol
      (\ s a -> s{_rfrUploadProtocol = a})

-- | OAuth access token.
rfrAccessToken :: Lens' ResourcesFeaturesRename (Maybe Text)
rfrAccessToken
  = lens _rfrAccessToken
      (\ s a -> s{_rfrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rfrUploadType :: Lens' ResourcesFeaturesRename (Maybe Text)
rfrUploadType
  = lens _rfrUploadType
      (\ s a -> s{_rfrUploadType = a})

-- | Multipart request metadata.
rfrPayload :: Lens' ResourcesFeaturesRename FeatureRename
rfrPayload
  = lens _rfrPayload (\ s a -> s{_rfrPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rfrCustomer :: Lens' ResourcesFeaturesRename Text
rfrCustomer
  = lens _rfrCustomer (\ s a -> s{_rfrCustomer = a})

-- | The unique ID of the feature to rename.
rfrOldName :: Lens' ResourcesFeaturesRename Text
rfrOldName
  = lens _rfrOldName (\ s a -> s{_rfrOldName = a})

-- | JSONP
rfrCallback :: Lens' ResourcesFeaturesRename (Maybe Text)
rfrCallback
  = lens _rfrCallback (\ s a -> s{_rfrCallback = a})

instance GoogleRequest ResourcesFeaturesRename where
        type Rs ResourcesFeaturesRename = ()
        type Scopes ResourcesFeaturesRename =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesRename'{..}
          = go _rfrCustomer _rfrOldName _rfrXgafv
              _rfrUploadProtocol
              _rfrAccessToken
              _rfrUploadType
              _rfrCallback
              (Just AltJSON)
              _rfrPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesRenameResource)
                      mempty
