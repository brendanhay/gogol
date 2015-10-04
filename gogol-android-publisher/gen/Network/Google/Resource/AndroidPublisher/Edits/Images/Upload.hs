{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a new image and adds it to the list of images for the specified
-- language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsImagesUpload@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Upload
    (
    -- * REST Resource
      EditsImagesUploadResource

    -- * Creating a Request
    , editsImagesUpload'
    , EditsImagesUpload'

    -- * Request Lenses
    , eiuQuotaUser
    , eiuPrettyPrint
    , eiuPackageName
    , eiuUserIP
    , eiuMedia
    , eiuImageType
    , eiuKey
    , eiuLanguage
    , eiuOAuthToken
    , eiuEditId
    , eiuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsImagesUpload@ which the
-- 'EditsImagesUpload'' request conforms to.
type EditsImagesUploadResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType"
                 AndroidPublisherEditsImagesUploadImageType
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] ImagesUploadResponse

-- | Uploads a new image and adds it to the list of images for the specified
-- language and image type.
--
-- /See:/ 'editsImagesUpload'' smart constructor.
data EditsImagesUpload' = EditsImagesUpload'
    { _eiuQuotaUser   :: !(Maybe Text)
    , _eiuPrettyPrint :: !Bool
    , _eiuPackageName :: !Text
    , _eiuUserIP      :: !(Maybe Text)
    , _eiuMedia       :: !Body
    , _eiuImageType   :: !AndroidPublisherEditsImagesUploadImageType
    , _eiuKey         :: !(Maybe Key)
    , _eiuLanguage    :: !Text
    , _eiuOAuthToken  :: !(Maybe OAuthToken)
    , _eiuEditId      :: !Text
    , _eiuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'eiuUserIP'
--
-- * 'eiuMedia'
--
-- * 'eiuImageType'
--
-- * 'eiuKey'
--
-- * 'eiuLanguage'
--
-- * 'eiuOAuthToken'
--
-- * 'eiuEditId'
--
-- * 'eiuFields'
editsImagesUpload'
    :: Text -- ^ 'packageName'
    -> Body -- ^ 'media'
    -> AndroidPublisherEditsImagesUploadImageType -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesUpload'
editsImagesUpload' pEiuPackageName_ pEiuMedia_ pEiuImageType_ pEiuLanguage_ pEiuEditId_ =
    EditsImagesUpload'
    { _eiuQuotaUser = Nothing
    , _eiuPrettyPrint = True
    , _eiuPackageName = pEiuPackageName_
    , _eiuUserIP = Nothing
    , _eiuMedia = pEiuMedia_
    , _eiuImageType = pEiuImageType_
    , _eiuKey = Nothing
    , _eiuLanguage = pEiuLanguage_
    , _eiuOAuthToken = Nothing
    , _eiuEditId = pEiuEditId_
    , _eiuFields = Nothing
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
eiuUserIP :: Lens' EditsImagesUpload' (Maybe Text)
eiuUserIP
  = lens _eiuUserIP (\ s a -> s{_eiuUserIP = a})

eiuMedia :: Lens' EditsImagesUpload' Body
eiuMedia = lens _eiuMedia (\ s a -> s{_eiuMedia = a})

eiuImageType :: Lens' EditsImagesUpload' AndroidPublisherEditsImagesUploadImageType
eiuImageType
  = lens _eiuImageType (\ s a -> s{_eiuImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiuKey :: Lens' EditsImagesUpload' (Maybe Key)
eiuKey = lens _eiuKey (\ s a -> s{_eiuKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eiuLanguage :: Lens' EditsImagesUpload' Text
eiuLanguage
  = lens _eiuLanguage (\ s a -> s{_eiuLanguage = a})

-- | OAuth 2.0 token for the current user.
eiuOAuthToken :: Lens' EditsImagesUpload' (Maybe OAuthToken)
eiuOAuthToken
  = lens _eiuOAuthToken
      (\ s a -> s{_eiuOAuthToken = a})

-- | Unique identifier for this edit.
eiuEditId :: Lens' EditsImagesUpload' Text
eiuEditId
  = lens _eiuEditId (\ s a -> s{_eiuEditId = a})

-- | Selector specifying which fields to include in a partial response.
eiuFields :: Lens' EditsImagesUpload' (Maybe Text)
eiuFields
  = lens _eiuFields (\ s a -> s{_eiuFields = a})

instance GoogleAuth EditsImagesUpload' where
        authKey = eiuKey . _Just
        authToken = eiuOAuthToken . _Just

instance GoogleRequest EditsImagesUpload' where
        type Rs EditsImagesUpload' = ImagesUploadResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsImagesUpload'{..}
          = go _eiuPackageName _eiuEditId _eiuLanguage
              _eiuImageType
              _eiuQuotaUser
              (Just _eiuPrettyPrint)
              _eiuUserIP
              _eiuFields
              _eiuKey
              _eiuOAuthToken
              (Just AltJSON)
              _eiuMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesUploadResource)
                      r
                      u
