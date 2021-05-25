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
-- Module      : Network.Google.Resource.People.OtherContacts.CopyOtherContactToMyContactsGroup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies an \"Other contact\" to a new contact in the user\'s
-- \"myContacts\" group
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.otherContacts.copyOtherContactToMyContactsGroup@.
module Network.Google.Resource.People.OtherContacts.CopyOtherContactToMyContactsGroup
    (
    -- * REST Resource
      OtherContactsCopyOtherContactToMyContactsGroupResource

    -- * Creating a Request
    , otherContactsCopyOtherContactToMyContactsGroup
    , OtherContactsCopyOtherContactToMyContactsGroup

    -- * Request Lenses
    , occoctmcgXgafv
    , occoctmcgUploadProtocol
    , occoctmcgResourceName
    , occoctmcgAccessToken
    , occoctmcgUploadType
    , occoctmcgPayload
    , occoctmcgCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.otherContacts.copyOtherContactToMyContactsGroup@ method which the
-- 'OtherContactsCopyOtherContactToMyContactsGroup' request conforms to.
type OtherContactsCopyOtherContactToMyContactsGroupResource
     =
     "v1" :>
       CaptureMode "resourceName"
         "copyOtherContactToMyContactsGroup"
         Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       CopyOtherContactToMyContactsGroupRequest
                       :> Post '[JSON] Person

-- | Copies an \"Other contact\" to a new contact in the user\'s
-- \"myContacts\" group
--
-- /See:/ 'otherContactsCopyOtherContactToMyContactsGroup' smart constructor.
data OtherContactsCopyOtherContactToMyContactsGroup =
  OtherContactsCopyOtherContactToMyContactsGroup'
    { _occoctmcgXgafv :: !(Maybe Xgafv)
    , _occoctmcgUploadProtocol :: !(Maybe Text)
    , _occoctmcgResourceName :: !Text
    , _occoctmcgAccessToken :: !(Maybe Text)
    , _occoctmcgUploadType :: !(Maybe Text)
    , _occoctmcgPayload :: !CopyOtherContactToMyContactsGroupRequest
    , _occoctmcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OtherContactsCopyOtherContactToMyContactsGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occoctmcgXgafv'
--
-- * 'occoctmcgUploadProtocol'
--
-- * 'occoctmcgResourceName'
--
-- * 'occoctmcgAccessToken'
--
-- * 'occoctmcgUploadType'
--
-- * 'occoctmcgPayload'
--
-- * 'occoctmcgCallback'
otherContactsCopyOtherContactToMyContactsGroup
    :: Text -- ^ 'occoctmcgResourceName'
    -> CopyOtherContactToMyContactsGroupRequest -- ^ 'occoctmcgPayload'
    -> OtherContactsCopyOtherContactToMyContactsGroup
otherContactsCopyOtherContactToMyContactsGroup pOccoctmcgResourceName_ pOccoctmcgPayload_ =
  OtherContactsCopyOtherContactToMyContactsGroup'
    { _occoctmcgXgafv = Nothing
    , _occoctmcgUploadProtocol = Nothing
    , _occoctmcgResourceName = pOccoctmcgResourceName_
    , _occoctmcgAccessToken = Nothing
    , _occoctmcgUploadType = Nothing
    , _occoctmcgPayload = pOccoctmcgPayload_
    , _occoctmcgCallback = Nothing
    }


-- | V1 error format.
occoctmcgXgafv :: Lens' OtherContactsCopyOtherContactToMyContactsGroup (Maybe Xgafv)
occoctmcgXgafv
  = lens _occoctmcgXgafv
      (\ s a -> s{_occoctmcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
occoctmcgUploadProtocol :: Lens' OtherContactsCopyOtherContactToMyContactsGroup (Maybe Text)
occoctmcgUploadProtocol
  = lens _occoctmcgUploadProtocol
      (\ s a -> s{_occoctmcgUploadProtocol = a})

-- | Required. The resource name of the \"Other contact\" to copy.
occoctmcgResourceName :: Lens' OtherContactsCopyOtherContactToMyContactsGroup Text
occoctmcgResourceName
  = lens _occoctmcgResourceName
      (\ s a -> s{_occoctmcgResourceName = a})

-- | OAuth access token.
occoctmcgAccessToken :: Lens' OtherContactsCopyOtherContactToMyContactsGroup (Maybe Text)
occoctmcgAccessToken
  = lens _occoctmcgAccessToken
      (\ s a -> s{_occoctmcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
occoctmcgUploadType :: Lens' OtherContactsCopyOtherContactToMyContactsGroup (Maybe Text)
occoctmcgUploadType
  = lens _occoctmcgUploadType
      (\ s a -> s{_occoctmcgUploadType = a})

-- | Multipart request metadata.
occoctmcgPayload :: Lens' OtherContactsCopyOtherContactToMyContactsGroup CopyOtherContactToMyContactsGroupRequest
occoctmcgPayload
  = lens _occoctmcgPayload
      (\ s a -> s{_occoctmcgPayload = a})

-- | JSONP
occoctmcgCallback :: Lens' OtherContactsCopyOtherContactToMyContactsGroup (Maybe Text)
occoctmcgCallback
  = lens _occoctmcgCallback
      (\ s a -> s{_occoctmcgCallback = a})

instance GoogleRequest
           OtherContactsCopyOtherContactToMyContactsGroup
         where
        type Rs
               OtherContactsCopyOtherContactToMyContactsGroup
             = Person
        type Scopes
               OtherContactsCopyOtherContactToMyContactsGroup
             =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.other.readonly"]
        requestClient
          OtherContactsCopyOtherContactToMyContactsGroup'{..}
          = go _occoctmcgResourceName _occoctmcgXgafv
              _occoctmcgUploadProtocol
              _occoctmcgAccessToken
              _occoctmcgUploadType
              _occoctmcgCallback
              (Just AltJSON)
              _occoctmcgPayload
              peopleService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OtherContactsCopyOtherContactToMyContactsGroupResource)
                      mempty
