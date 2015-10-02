{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsImagesDelete@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
    (
    -- * REST Resource
      EditsImagesDeleteResource

    -- * Creating a Request
    , editsImagesDelete'
    , EditsImagesDelete'

    -- * Request Lenses
    , eidQuotaUser
    , eidPrettyPrint
    , eidPackageName
    , eidUserIP
    , eidImageType
    , eidKey
    , eidImageId
    , eidLanguage
    , eidOAuthToken
    , eidEditId
    , eidFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsImagesDelete@ which the
-- 'EditsImagesDelete'' request conforms to.
type EditsImagesDeleteResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType"
                 AndroidPublisherEditsImagesDeleteImageType
                 :>
                 Capture "imageId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ 'editsImagesDelete'' smart constructor.
data EditsImagesDelete' = EditsImagesDelete'
    { _eidQuotaUser   :: !(Maybe Text)
    , _eidPrettyPrint :: !Bool
    , _eidPackageName :: !Text
    , _eidUserIP      :: !(Maybe Text)
    , _eidImageType   :: !AndroidPublisherEditsImagesDeleteImageType
    , _eidKey         :: !(Maybe Key)
    , _eidImageId     :: !Text
    , _eidLanguage    :: !Text
    , _eidOAuthToken  :: !(Maybe OAuthToken)
    , _eidEditId      :: !Text
    , _eidFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidQuotaUser'
--
-- * 'eidPrettyPrint'
--
-- * 'eidPackageName'
--
-- * 'eidUserIP'
--
-- * 'eidImageType'
--
-- * 'eidKey'
--
-- * 'eidImageId'
--
-- * 'eidLanguage'
--
-- * 'eidOAuthToken'
--
-- * 'eidEditId'
--
-- * 'eidFields'
editsImagesDelete'
    :: Text -- ^ 'packageName'
    -> AndroidPublisherEditsImagesDeleteImageType -- ^ 'imageType'
    -> Text -- ^ 'imageId'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesDelete'
editsImagesDelete' pEidPackageName_ pEidImageType_ pEidImageId_ pEidLanguage_ pEidEditId_ =
    EditsImagesDelete'
    { _eidQuotaUser = Nothing
    , _eidPrettyPrint = True
    , _eidPackageName = pEidPackageName_
    , _eidUserIP = Nothing
    , _eidImageType = pEidImageType_
    , _eidKey = Nothing
    , _eidImageId = pEidImageId_
    , _eidLanguage = pEidLanguage_
    , _eidOAuthToken = Nothing
    , _eidEditId = pEidEditId_
    , _eidFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eidQuotaUser :: Lens' EditsImagesDelete' (Maybe Text)
eidQuotaUser
  = lens _eidQuotaUser (\ s a -> s{_eidQuotaUser = a})

-- | Returns response with indentations and line breaks.
eidPrettyPrint :: Lens' EditsImagesDelete' Bool
eidPrettyPrint
  = lens _eidPrettyPrint
      (\ s a -> s{_eidPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eidPackageName :: Lens' EditsImagesDelete' Text
eidPackageName
  = lens _eidPackageName
      (\ s a -> s{_eidPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eidUserIP :: Lens' EditsImagesDelete' (Maybe Text)
eidUserIP
  = lens _eidUserIP (\ s a -> s{_eidUserIP = a})

eidImageType :: Lens' EditsImagesDelete' AndroidPublisherEditsImagesDeleteImageType
eidImageType
  = lens _eidImageType (\ s a -> s{_eidImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eidKey :: Lens' EditsImagesDelete' (Maybe Key)
eidKey = lens _eidKey (\ s a -> s{_eidKey = a})

-- | Unique identifier an image within the set of images attached to this
-- edit.
eidImageId :: Lens' EditsImagesDelete' Text
eidImageId
  = lens _eidImageId (\ s a -> s{_eidImageId = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eidLanguage :: Lens' EditsImagesDelete' Text
eidLanguage
  = lens _eidLanguage (\ s a -> s{_eidLanguage = a})

-- | OAuth 2.0 token for the current user.
eidOAuthToken :: Lens' EditsImagesDelete' (Maybe OAuthToken)
eidOAuthToken
  = lens _eidOAuthToken
      (\ s a -> s{_eidOAuthToken = a})

-- | Unique identifier for this edit.
eidEditId :: Lens' EditsImagesDelete' Text
eidEditId
  = lens _eidEditId (\ s a -> s{_eidEditId = a})

-- | Selector specifying which fields to include in a partial response.
eidFields :: Lens' EditsImagesDelete' (Maybe Text)
eidFields
  = lens _eidFields (\ s a -> s{_eidFields = a})

instance GoogleAuth EditsImagesDelete' where
        authKey = eidKey . _Just
        authToken = eidOAuthToken . _Just

instance GoogleRequest EditsImagesDelete' where
        type Rs EditsImagesDelete' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsImagesDelete'{..}
          = go _eidQuotaUser (Just _eidPrettyPrint)
              _eidPackageName
              _eidUserIP
              _eidImageType
              _eidKey
              _eidImageId
              _eidLanguage
              _eidOAuthToken
              _eidEditId
              _eidFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesDeleteResource)
                      r
                      u
