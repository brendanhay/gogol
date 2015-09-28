{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Images.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.images.delete@.
module Network.Google.API.Androidpublisher.Edits.Images.Delete
    (
    -- * REST Resource
      EditsImagesDeleteAPI

    -- * Creating a Request
    , editsImagesDelete'
    , EditsImagesDelete'

    -- * Request Lenses
    , eidiQuotaUser
    , eidiPrettyPrint
    , eidiPackageName
    , eidiUserIp
    , eidiImageType
    , eidiKey
    , eidiImageId
    , eidiLanguage
    , eidiOauthToken
    , eidiEditId
    , eidiFields
    , eidiAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.images.delete which the
-- 'EditsImagesDelete'' request conforms to.
type EditsImagesDeleteAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" EditsImagesDelete'ImageType :>
                 Capture "imageId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ 'editsImagesDelete'' smart constructor.
data EditsImagesDelete' = EditsImagesDelete'
    { _eidiQuotaUser   :: !(Maybe Text)
    , _eidiPrettyPrint :: !Bool
    , _eidiPackageName :: !Text
    , _eidiUserIp      :: !(Maybe Text)
    , _eidiImageType   :: !EditsImagesDelete'ImageType
    , _eidiKey         :: !(Maybe Text)
    , _eidiImageId     :: !Text
    , _eidiLanguage    :: !Text
    , _eidiOauthToken  :: !(Maybe Text)
    , _eidiEditId      :: !Text
    , _eidiFields      :: !(Maybe Text)
    , _eidiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidiQuotaUser'
--
-- * 'eidiPrettyPrint'
--
-- * 'eidiPackageName'
--
-- * 'eidiUserIp'
--
-- * 'eidiImageType'
--
-- * 'eidiKey'
--
-- * 'eidiImageId'
--
-- * 'eidiLanguage'
--
-- * 'eidiOauthToken'
--
-- * 'eidiEditId'
--
-- * 'eidiFields'
--
-- * 'eidiAlt'
editsImagesDelete'
    :: Text -- ^ 'packageName'
    -> EditsImagesDelete'ImageType -- ^ 'imageType'
    -> Text -- ^ 'imageId'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesDelete'
editsImagesDelete' pEidiPackageName_ pEidiImageType_ pEidiImageId_ pEidiLanguage_ pEidiEditId_ =
    EditsImagesDelete'
    { _eidiQuotaUser = Nothing
    , _eidiPrettyPrint = True
    , _eidiPackageName = pEidiPackageName_
    , _eidiUserIp = Nothing
    , _eidiImageType = pEidiImageType_
    , _eidiKey = Nothing
    , _eidiImageId = pEidiImageId_
    , _eidiLanguage = pEidiLanguage_
    , _eidiOauthToken = Nothing
    , _eidiEditId = pEidiEditId_
    , _eidiFields = Nothing
    , _eidiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eidiQuotaUser :: Lens' EditsImagesDelete' (Maybe Text)
eidiQuotaUser
  = lens _eidiQuotaUser
      (\ s a -> s{_eidiQuotaUser = a})

-- | Returns response with indentations and line breaks.
eidiPrettyPrint :: Lens' EditsImagesDelete' Bool
eidiPrettyPrint
  = lens _eidiPrettyPrint
      (\ s a -> s{_eidiPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eidiPackageName :: Lens' EditsImagesDelete' Text
eidiPackageName
  = lens _eidiPackageName
      (\ s a -> s{_eidiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eidiUserIp :: Lens' EditsImagesDelete' (Maybe Text)
eidiUserIp
  = lens _eidiUserIp (\ s a -> s{_eidiUserIp = a})

eidiImageType :: Lens' EditsImagesDelete' EditsImagesDelete'ImageType
eidiImageType
  = lens _eidiImageType
      (\ s a -> s{_eidiImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eidiKey :: Lens' EditsImagesDelete' (Maybe Text)
eidiKey = lens _eidiKey (\ s a -> s{_eidiKey = a})

-- | Unique identifier an image within the set of images attached to this
-- edit.
eidiImageId :: Lens' EditsImagesDelete' Text
eidiImageId
  = lens _eidiImageId (\ s a -> s{_eidiImageId = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eidiLanguage :: Lens' EditsImagesDelete' Text
eidiLanguage
  = lens _eidiLanguage (\ s a -> s{_eidiLanguage = a})

-- | OAuth 2.0 token for the current user.
eidiOauthToken :: Lens' EditsImagesDelete' (Maybe Text)
eidiOauthToken
  = lens _eidiOauthToken
      (\ s a -> s{_eidiOauthToken = a})

-- | Unique identifier for this edit.
eidiEditId :: Lens' EditsImagesDelete' Text
eidiEditId
  = lens _eidiEditId (\ s a -> s{_eidiEditId = a})

-- | Selector specifying which fields to include in a partial response.
eidiFields :: Lens' EditsImagesDelete' (Maybe Text)
eidiFields
  = lens _eidiFields (\ s a -> s{_eidiFields = a})

-- | Data format for the response.
eidiAlt :: Lens' EditsImagesDelete' Alt
eidiAlt = lens _eidiAlt (\ s a -> s{_eidiAlt = a})

instance GoogleRequest EditsImagesDelete' where
        type Rs EditsImagesDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsImagesDelete'{..}
          = go _eidiQuotaUser (Just _eidiPrettyPrint)
              _eidiPackageName
              _eidiUserIp
              _eidiImageType
              _eidiKey
              _eidiImageId
              _eidiLanguage
              _eidiOauthToken
              _eidiEditId
              _eidiFields
              (Just _eidiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesDeleteAPI)
                      r
                      u
