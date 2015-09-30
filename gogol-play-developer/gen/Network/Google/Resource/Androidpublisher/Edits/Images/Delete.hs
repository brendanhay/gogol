{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Images.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsImagesDelete@.
module Androidpublisher.Edits.Images.Delete
    (
    -- * REST Resource
      EditsImagesDeleteAPI

    -- * Creating a Request
    , editsImagesDelete
    , EditsImagesDelete

    -- * Request Lenses
    , eQuotaUser
    , ePrettyPrint
    , ePackageName
    , eUserIp
    , eImageType
    , eKey
    , eImageId
    , eLanguage
    , eOauthToken
    , eEditId
    , eFields
    , eAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsImagesDelete@ which the
-- 'EditsImagesDelete' request conforms to.
type EditsImagesDeleteAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" Text :>
                 Capture "imageId" Text :> Delete '[JSON] ()

-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ 'editsImagesDelete' smart constructor.
data EditsImagesDelete = EditsImagesDelete
    { _eQuotaUser   :: !(Maybe Text)
    , _ePrettyPrint :: !Bool
    , _ePackageName :: !Text
    , _eUserIp      :: !(Maybe Text)
    , _eImageType   :: !Text
    , _eKey         :: !(Maybe Text)
    , _eImageId     :: !Text
    , _eLanguage    :: !Text
    , _eOauthToken  :: !(Maybe Text)
    , _eEditId      :: !Text
    , _eFields      :: !(Maybe Text)
    , _eAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'ePrettyPrint'
--
-- * 'ePackageName'
--
-- * 'eUserIp'
--
-- * 'eImageType'
--
-- * 'eKey'
--
-- * 'eImageId'
--
-- * 'eLanguage'
--
-- * 'eOauthToken'
--
-- * 'eEditId'
--
-- * 'eFields'
--
-- * 'eAlt'
editsImagesDelete
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'imageType'
    -> Text -- ^ 'imageId'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesDelete
editsImagesDelete pEPackageName_ pEImageType_ pEImageId_ pELanguage_ pEEditId_ =
    EditsImagesDelete
    { _eQuotaUser = Nothing
    , _ePrettyPrint = True
    , _ePackageName = pEPackageName_
    , _eUserIp = Nothing
    , _eImageType = pEImageType_
    , _eKey = Nothing
    , _eImageId = pEImageId_
    , _eLanguage = pELanguage_
    , _eOauthToken = Nothing
    , _eEditId = pEEditId_
    , _eFields = Nothing
    , _eAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EditsImagesDelete' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EditsImagesDelete' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsImagesDelete' Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIp :: Lens' EditsImagesDelete' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

eImageType :: Lens' EditsImagesDelete' Text
eImageType
  = lens _eImageType (\ s a -> s{_eImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EditsImagesDelete' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | Unique identifier an image within the set of images attached to this
-- edit.
eImageId :: Lens' EditsImagesDelete' Text
eImageId = lens _eImageId (\ s a -> s{_eImageId = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eLanguage :: Lens' EditsImagesDelete' Text
eLanguage
  = lens _eLanguage (\ s a -> s{_eLanguage = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EditsImagesDelete' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsImagesDelete' Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EditsImagesDelete' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EditsImagesDelete' Text
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EditsImagesDelete' where
        type Rs EditsImagesDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsImagesDelete{..}
          = go _eQuotaUser _ePrettyPrint _ePackageName _eUserIp
              _eImageType
              _eKey
              _eImageId
              _eLanguage
              _eOauthToken
              _eEditId
              _eFields
              _eAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesDeleteAPI)
                      r
                      u
