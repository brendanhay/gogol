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
-- Module      : Network.Google.Resource.Drive.Properties.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a property. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.patch@.
module Network.Google.Resource.Drive.Properties.Patch
    (
    -- * REST Resource
      PropertiesPatchResource

    -- * Creating a Request
    , propertiesPatch'
    , PropertiesPatch'

    -- * Request Lenses
    , ppPropertyKey
    , ppVisibility
    , ppPayload
    , ppFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.properties.patch@ method which the
-- 'PropertiesPatch'' request conforms to.
type PropertiesPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "visibility" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Property :> Patch '[JSON] Property

-- | Updates a property. This method supports patch semantics.
--
-- /See:/ 'propertiesPatch'' smart constructor.
data PropertiesPatch' = PropertiesPatch'
    { _ppPropertyKey :: !Text
    , _ppVisibility  :: !Text
    , _ppPayload     :: !Property
    , _ppFileId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppPropertyKey'
--
-- * 'ppVisibility'
--
-- * 'ppPayload'
--
-- * 'ppFileId'
propertiesPatch'
    :: Text -- ^ 'ppPropertyKey'
    -> Property -- ^ 'ppPayload'
    -> Text -- ^ 'ppFileId'
    -> PropertiesPatch'
propertiesPatch' pPpPropertyKey_ pPpPayload_ pPpFileId_ =
    PropertiesPatch'
    { _ppPropertyKey = pPpPropertyKey_
    , _ppVisibility = "private"
    , _ppPayload = pPpPayload_
    , _ppFileId = pPpFileId_
    }

-- | The key of the property.
ppPropertyKey :: Lens' PropertiesPatch' Text
ppPropertyKey
  = lens _ppPropertyKey
      (\ s a -> s{_ppPropertyKey = a})

-- | The visibility of the property.
ppVisibility :: Lens' PropertiesPatch' Text
ppVisibility
  = lens _ppVisibility (\ s a -> s{_ppVisibility = a})

-- | Multipart request metadata.
ppPayload :: Lens' PropertiesPatch' Property
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | The ID of the file.
ppFileId :: Lens' PropertiesPatch' Text
ppFileId = lens _ppFileId (\ s a -> s{_ppFileId = a})

instance GoogleRequest PropertiesPatch' where
        type Rs PropertiesPatch' = Property
        requestClient PropertiesPatch'{..}
          = go _ppFileId _ppPropertyKey (Just _ppVisibility)
              (Just AltJSON)
              _ppPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PropertiesPatchResource)
                      mempty
