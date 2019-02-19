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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.contentCategories.update@.
module Network.Google.Resource.DFAReporting.ContentCategories.Update
    (
    -- * REST Resource
      ContentCategoriesUpdateResource

    -- * Creating a Request
    , contentCategoriesUpdate
    , ContentCategoriesUpdate

    -- * Request Lenses
    , ccuProFileId
    , ccuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.update@ method which the
-- 'ContentCategoriesUpdate' request conforms to.
type ContentCategoriesUpdateResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ContentCategory :>
                   Put '[JSON] ContentCategory

-- | Updates an existing content category.
--
-- /See:/ 'contentCategoriesUpdate' smart constructor.
data ContentCategoriesUpdate =
  ContentCategoriesUpdate'
    { _ccuProFileId :: !(Textual Int64)
    , _ccuPayload   :: !ContentCategory
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContentCategoriesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuProFileId'
--
-- * 'ccuPayload'
contentCategoriesUpdate
    :: Int64 -- ^ 'ccuProFileId'
    -> ContentCategory -- ^ 'ccuPayload'
    -> ContentCategoriesUpdate
contentCategoriesUpdate pCcuProFileId_ pCcuPayload_ =
  ContentCategoriesUpdate'
    {_ccuProFileId = _Coerce # pCcuProFileId_, _ccuPayload = pCcuPayload_}

-- | User profile ID associated with this request.
ccuProFileId :: Lens' ContentCategoriesUpdate Int64
ccuProFileId
  = lens _ccuProFileId (\ s a -> s{_ccuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ccuPayload :: Lens' ContentCategoriesUpdate ContentCategory
ccuPayload
  = lens _ccuPayload (\ s a -> s{_ccuPayload = a})

instance GoogleRequest ContentCategoriesUpdate where
        type Rs ContentCategoriesUpdate = ContentCategory
        type Scopes ContentCategoriesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesUpdate'{..}
          = go _ccuProFileId (Just AltJSON) _ccuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesUpdateResource)
                      mempty
