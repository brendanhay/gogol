{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Images.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a new image and adds it to the list of images for the specified
-- language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsImagesUpload@.
module Androidpublisher.Edits.Images.Upload
    (
    -- * REST Resource
      EditsImagesUploadAPI

    -- * Creating a Request
    , editsImagesUpload
    , EditsImagesUpload

    -- * Request Lenses
    , eiuQuotaUser
    , eiuPrettyPrint
    , eiuPackageName
    , eiuUserIp
    , eiuImageType
    , eiuKey
    , eiuLanguage
    , eiuOauthToken
    , eiuEditId
    , eiuFields
    , eiuAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsImagesUpload@ which the
-- 'EditsImagesUpload' request conforms to.
type EditsImagesUploadAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" Text :>
                 Post '[JSON] ImagesUploadResponse

-- | Uploads a new image and adds it to the list of images for the specified
-- language and image type.
--
-- /See:/ 'editsImagesUpload' smart constructor.
data EditsImagesUpload = EditsImagesUpload
    { _eiuQuotaUser   :: !(Maybe Text)
    , _eiuPrettyPrint :: !Bool
    , _eiuPackageName :: !Text
    , _eiuUserIp      :: !(Maybe Text)
    , _eiuImageType   :: !Text
    , _eiuKey         :: !(Maybe Text)
    , _eiuLanguage    :: !Text
    , _eiuOauthToken  :: !(Maybe Text)
    , _eiuEditId      :: !Text
    , _eiuFields      :: !(Maybe Text)
    , _eiuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiuQuotaUser'
--
-- * 'eiuPrettyPrint'
--
-- * 'eiuPackageName'
--
-- * 'eiuUserIp'
--
-- * 'eiuImageType'
--
-- * 'eiuKey'
--
-- * 'eiuLanguage'
--
-- * 'eiuOauthToken'
--
-- * 'eiuEditId'
--
-- * 'eiuFields'
--
-- * 'eiuAlt'
editsImagesUpload
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesUpload
editsImagesUpload pEiuPackageName_ pEiuImageType_ pEiuLanguage_ pEiuEditId_ =
    EditsImagesUpload
    { _eiuQuotaUser = Nothing
    , _eiuPrettyPrint = True
    , _eiuPackageName = pEiuPackageName_
    , _eiuUserIp = Nothing
    , _eiuImageType = pEiuImageType_
    , _eiuKey = Nothing
    , _eiuLanguage = pEiuLanguage_
    , _eiuOauthToken = Nothing
    , _eiuEditId = pEiuEditId_
    , _eiuFields = Nothing
    , _eiuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eiuQuotaUser :: Lens' EditsImagesUpload' (Maybe Text)
eiuQuotaUser
  = lens _eiuQuotaUser (\ s a -> s{_eiuQuotaUser = a})

-- | Returns response with indentations and line breaks.
eiuPrettyPrint :: Lens' EditsImagesUpload' Bool
eiuPrettyPrint
  = lens _eiuPrettyPrint
      (\ s a -> s{_eiuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eiuPackageName :: Lens' EditsImagesUpload' Text
eiuPackageName
  = lens _eiuPackageName
      (\ s a -> s{_eiuPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eiuUserIp :: Lens' EditsImagesUpload' (Maybe Text)
eiuUserIp
  = lens _eiuUserIp (\ s a -> s{_eiuUserIp = a})

eiuImageType :: Lens' EditsImagesUpload' Text
eiuImageType
  = lens _eiuImageType (\ s a -> s{_eiuImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiuKey :: Lens' EditsImagesUpload' (Maybe Text)
eiuKey = lens _eiuKey (\ s a -> s{_eiuKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eiuLanguage :: Lens' EditsImagesUpload' Text
eiuLanguage
  = lens _eiuLanguage (\ s a -> s{_eiuLanguage = a})

-- | OAuth 2.0 token for the current user.
eiuOauthToken :: Lens' EditsImagesUpload' (Maybe Text)
eiuOauthToken
  = lens _eiuOauthToken
      (\ s a -> s{_eiuOauthToken = a})

-- | Unique identifier for this edit.
eiuEditId :: Lens' EditsImagesUpload' Text
eiuEditId
  = lens _eiuEditId (\ s a -> s{_eiuEditId = a})

-- | Selector specifying which fields to include in a partial response.
eiuFields :: Lens' EditsImagesUpload' (Maybe Text)
eiuFields
  = lens _eiuFields (\ s a -> s{_eiuFields = a})

-- | Data format for the response.
eiuAlt :: Lens' EditsImagesUpload' Text
eiuAlt = lens _eiuAlt (\ s a -> s{_eiuAlt = a})

instance GoogleRequest EditsImagesUpload' where
        type Rs EditsImagesUpload' = ImagesUploadResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsImagesUpload{..}
          = go _eiuQuotaUser _eiuPrettyPrint _eiuPackageName
              _eiuUserIp
              _eiuImageType
              _eiuKey
              _eiuLanguage
              _eiuOauthToken
              _eiuEditId
              _eiuFields
              _eiuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesUploadAPI)
                      r
                      u
